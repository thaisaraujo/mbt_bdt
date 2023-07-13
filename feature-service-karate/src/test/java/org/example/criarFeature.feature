Feature: CriarProdutoComFeature

  Scenario Outline: initializeProdutoInvalido addFeatureToProduct
    Given url 'http://localhost:8080/products/' + '<produto>' + /features/ + '<feature>'
    And form field description = '<description>'
    When method POST
    Then status <statusAddFeauture>
    And print response

    Examples:
    | produto  | feature       | description         | statusAddFeauture |
    | ESHOP_1  | VIDEO_LESSONS | aulas em videos     | 500               |
    | ESHOP_0  | PAYMENT       | formas de pagamento | 201               |


