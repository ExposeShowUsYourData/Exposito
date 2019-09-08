![Exposito Logo](ExpositoLogo-GovHack2019.png)

# Exposito

Team members & one guest: Etienne Oosthuyesen, Jake Deed, Andrew Exley, Cameron Wells, Matt Nolis, Nghia Ngyuen, Rory Tarnow-Mordi, Reagan Burpee, Daniel Lindsell, Shishir Sarfare and Justin Ward 

Source Code url: https://github.com/ExposeShowUsYourData/Exposito

Video url: 

Homepage url: https://github.com/ExposeShowUsYourData/Exposito

## Local Event Location:

Adelaide

## Challenges
- National - Leveraging innovation precincts to drive economic prosperity
- National - Training AI models to deliver better human outcomes
- National - Australia’s Future Employment
- Local - Investing in regions
- Local - Showcasing our regions
- Local - Local Government Information Technology Association of South Australia

## Who is NICI?
National Investment and Commerce Initiative or NICI is a modern gateway to connect investors, migrants and tourists to opportunities and services provided by the federal, state, and local government agencies. NICI's AWS based intelligent platform employs mature services such as machine learning, deep learning, speech and language services; while leveraging open datasets from private and government agencies and research institutions. Her intelligent design means she can self-learn to continuously adapt to the changing data and environment to provide the best available information and analysis to individuals in a fast and secure manner. A 360-degree feedback loop ensures NICI is not only able to assist individuals, but also help improve bodies, such as local councils, learn through feedback and improve its products and services.

## How can NICI help you?
If you are an Investor, NICI can assist you by providing information on industry in regional and urban areas with potential development and growth opportunities. Depending on your needs, NICI delivers information on infrastructure, services, demographics, and environment for an area. She also understands government or business initiatives, providing up-to-date information on funding grants or available government incentives, and promotes new initiatives. NICI puts you in touch with local resources such as councils or businesses to assist your investment journey.
 
If you are a Worker looking for employment opportunities in regional Australia, NICI provides information on local industries, in-demand skills, demographics and liveability factors.  She understands amenities, sporting associations, art and culture, events, access to services are essential and connects you to local job boards and resources for additional information and assistance.  She actively learns your needs, to recommend information and services suited to your personal requirements.

If you are a Local Council, NICI provides regional relocation recommendations to individuals, and investment opportunities to investors using a 360-degree feedback loop.  Understanding local infrastructure and services, the solution seeks to improve vocational and cultural diversity, enriching councils' ability to create prosperous regions.

## How does NICI work?
NICI's intelligent platform continuously evolves through interactions and analysis. A robust architecture based on modern technologies, open datasets and a powerful recommendation engine underpin NICI’s platform.

### NICI Data (described in detail on the NICI Project Page)
NICI analyses several open datasets based on information required or relevant to the individual, leveraging economic, demographic, environmental and social data captured by federal, state and local government bodies. Underlying datasets are described on the project page.

### NICI Architecture (described in detail in NICI Architecture and NICI Backend - Recommendation Engine documents)
#### Overview
NICI is the National Investment and Commerce Initiative, the modern gateway to connect investors, migrants and tourists to opportunities and services provided by federal, state and local government.  NICI is an AI platform hosted in the AWS ecosystem, it comprises of an application endpoint that can handle a variety of communication channels including text through chat windows and also voice.   The conversation then passes through to AWS Lex chatbot which is used to obtain more relevant information about the subject and whether they’re looking to invest, looking for work or are interested in tourism in certain areas.  The chat bot is hooked up to speech services such as AWS Translate and AWS Polly so it isn't limited to just English speaking backgrounds. After NICI has obtained enough information about the subject and they ask for a recommendation the data is passed through the AWS Sage Maker to be passed through Machine Learning.

#### AI Platform 
CloudFront Web Application
    This is the communication endpoint for the user.  This encompasses all the application artifacts including UI interface, communication with the backend API’s, databases for storage and AI components

Lex Chat Bot
    This service provides a conversational interface into the application using voice and text through Natural Language Processing (NLU) and Automatic Speech Recognition (ASR).  This is the central point to the application which can call a host of other functions / API’s to enhance user experience	

Speech Services
    AWS Translation Services allows the user to communicate to our AI platform in a variety of languages, asking questions and it being understood by our Chat Bot engine and AI. Responses and information can then be translated back to the user in the native language.
    AWS Polly can turn text into lifelike speech.  This is used to communicate verbally to the user if that is their chosen communication channel.

Sage Maker
    Sage Maker is the Machine Learning product that hosts the NICI Recommendation Engine. The recommendation engine makes recommendations based on datasets previously acquired as well as the dialog acquired through the users interaction with the chat bot.  
    The ML is built to give the best recommended action to prospective opportunity seekers, where “best” can change based on the requirements of NICI’s owner.
     Data acquisition is handled in the ML side of the application
     This is detailed more under the Machine Learning documentation.
     
 ##### NICI Recommendation Engine (Machine Learning) - NICI Backend document
To give the best recommended action to prospective opportunity seekers, where “best” can change based on the requirements of NICI’s owner.
