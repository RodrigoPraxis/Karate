Feature: Bau

  Background: 
    * def responseToken = read('responseToken.json')

  Scenario Outline: Prueba OK
    Given url baseUrl
    Given path 'api/v1/validate/session'
    * header Authorization = 'Bearer <grantAccess>'
    * configure headers = { pos:'web', client:'ecommerce', flow:'checkin', x-clientkey: 'FZ6a0GAOAvQlEibWbP5BKaGqbgV1wEz9',user-agent: 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36',accept: '*/*', Connection: 'keep-alive', Cookie: 'ak_bmsc=F8DFBAC99A911C44B7E75840DD4C1A58~000000000000000000000000000000~YAAQHDUyF1Xacnp+AQAAym0UwA75gkVdshVDR1yyak+7o3Wn5uB2LPBnjIGlWt6teaXLTxyzeNd3nBTK9HUfKtNmOMJvFylSJRrOm2CRjMhHy+DS8SBqHBMAU6XvrmozpWNoPtiAmsLZ61YiKUBgucoQ09Iifg72rAuuSSnreHn4rI4g0BYedJaouUUPXq8QAiM8kadJVAJBbCdn4pc4nYsr+zFXHaWTYEeol80aAjIp1c+hcag7at5KZJxPbtdaihzAMGihXE42oxZldfenD+3q0fTJBYsb4qXtzRMBzLklX2zy6w00TzBevRXn+vdUxxBOfWMlPVW81v79XoBPI2v1CYKxu/unszvKn9esaIWiXXnpuJnMyXdtJhLR; bm_sv=656C00A4E5DD9EDCDBE099519369FF57~J+Opmjw9gE+hz8KsnvXHD4n2Juo5zJN3XQsT5k5h72O8PbD5W++Xi88fzL8vkUnioG1ergiesbMVgwxR0FA9r8FDwquNTf8kOhFUSX2Knsajkj4DndnLIHCWT6E+3rSNfpdaE2tRAtpWjSGiXN+jEHen/Qar1D2NrKDbwGq93O8=', Accept:'*/*'}
    And request { cartId: '511fd974-573b-4129-a7a7-dc1d61324', pnr: 'WIONUY', name: 'Prueba', changeSession: 'false' }
    When method POST
    And print response
    Then status 200

    Examples: 
      | responseToken |
