Feature: Pruebas de Bau

  Background:

  Scenario: Obtener el token
    Given url baseUrl
    Given path 'api/v1/am-grant/grantAccess'
    #* configure headers = {Authorization: 'Basic dDBicHRzWW5xQWlEWUdaQURXUFVoWXA2WmJXdWY0UFI6R3U0SjFFekZoUzh6dGNVcA==', access_type: 'client_credentials', Connection: 'keep-alive', User-Agent:'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36', Accept: 'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9'}
    * configure headers = {Authorization: 'Basic Rlo2YTBHQU9BdlFsRWliV2JQNUJLYUdxYmdWMXdFejk6WGdWbW8yc25KVmFmRkxnSQ==', access_type: 'client_credentials', user-agent: 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36',accept: '*/*', Connection: 'keep-alive' }
    When method GET
    Then status 200
    * def tokenResponse = response
		* def list = [ '#(tokenResponse)' ]
		And print list
    * def exportData = karate.write(list,'../src/test/java/karate/responseToken.json')
    
    
  