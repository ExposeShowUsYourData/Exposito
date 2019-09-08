import json
import numpy as np
import pandas as pd
import nicirec

def lambda_handler(event, context):
    
    # Load current World State object
    worldState = nicirec.getWorldState()
    locations = worldState.getLocations()
    
    # Load current Location Preference model
    locationPreferenceModel = nicirec.getLocationModel(locations)
    
    # Load historic results
    pastResults = nicirec.getResults()
    
    # Model Selection - currently hard coded
    # weights is a list of 4 weights:
    #  0 - User preference weight
    #  1 - Location needs weight
    #  2 - Fairness weight
    #  3 - Historic success weight
    if event['modelType'] == 'libertarian':
        rws = [1, 0, 0, 0]
    elif event['modelType'] == 'uninformative':
        rws = [1/3, 1/3, 1/3, 0]
    else:
        rws = [1/4, 1/4, 1/4, 1/4]
    weights = [weight/sum(rws) for weight in rws]
    
    # Extract features based on comparison type
    if event["type"] == "investor":
        userPreference = event["invPref"]
        userCharacteristics = event["invChar"]
    else: #migrant or other user
        userPreference = event["userPref"]
        userCharacteristics = event["userChar"]
    
    # Compare user preference to location characteristics
    userPreferenceScores = worldState.userPrefScore(userPreference, event["type"], scaled=True)
    
    # Compare location preferences with user characteristics
    locationPreferenceScores = locationPreferenceModel.predict(userCharacteristics, event["type"])
    
    # Compare location fairness
    locationFairnessScores = pastResults.fairnessScore(locations)
    
    # Compare previous success
    pastSuccessScores = pastResults.successScore(userCharacteristics, locations)
    
    # All success stores
    scores = zip(userPreferenceScores, locationPreferenceScores, locationFairnessScores, pastSuccessScores)
    
    # Determine recommendation vector:
    recommendationVector = [sum([item[0]*item[1] for item in zip(score, weights)]) for score in scores]

    
    return {
        'statusCode': 200,
        'body': json.dumps({
            "recommendationScores" : recommendationVector,
            "locations" : locations
        })
    }
