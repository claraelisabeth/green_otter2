Feature: DataCycle API test with Karate

 Background:
 Given url 'https://datacycle.visitklagenfurt.at/api/v4/endpoints/f9ef0685-36bd-404f-b53a-db52adc86d7c?token=04f9e0d4dd87173d29ebc9c7d1c64ac8'
 
 
 	Scenario: Checking if DataCycle is up and available
 	And param token = '04f9e0d4dd87173d29ebc9c7d1c64ac8'
  When method get
  Then status 200
 
  Scenario: Testing if the Names on DataCycle API are available
  And param token = '04f9e0d4dd87173d29ebc9c7d1c64ac8'
  And param fields = 'name'
  When method get
  Then status 200
  
  Scenario: query the first level of data from one POI (sandwirt)
  And path 'things'
  And path '4250bd41-9bfe-4222-8b72-7f4a647f71c0'
  And param token = '04f9e0d4dd87173d29ebc9c7d1c64ac8'
  When method get
  Then status 200
  
  Scenario: query POI details together with its image details (sandwirt)
  And path 'things'
  And path '4250bd41-9bfe-4222-8b72-7f4a647f71c0'
  And param token = '04f9e0d4dd87173d29ebc9c7d1c64ac8'
  And param include = 'image'
  When method get
  Then status 200
  
   Scenario: test language (english) (sandwirt)
  And param token = '04f9e0d4dd87173d29ebc9c7d1c64ac8'
  And param language = 'en'
  When method get
  Then status 200
  
   Scenario: test language (english)
  And path 'things'
  And path '4250bd41-9bfe-4222-8b72-7f4a647f71c0'
  And param token = '04f9e0d4dd87173d29ebc9c7d1c64ac8'
  And param language = 'en'
  When method get
  Then status 200
  
  