Feature: CriarProtudoComFeature
  Background: *url 'http://localhost:8080'

  Scenario Outline: initialize add deleteByName add addFeatureToProduct
    #get produtos
    Given url 'http://localhost:8080/products'
    When method GET
    Then status 200

    #post add produto
    Given url 'http://localhost:8080/products/' + '<produto>'
    When method POST
    Then status 201

    #post deletar produto
    Given url 'http://localhost:8080/products/' + '<produto>'
    When method DELETE
    Then status 204

    #post add produto
    Given url 'http://localhost:8080/products/' + '<produto>'
    When method POST
    Then status 201

    #post add feature
    Given url 'http://localhost:8080/products/' + '<produto>' + /features/ + '<feature>'
    And form field description = '<description>'
    When method POST
    Then status 201

    Examples:
   | produto | feature   | description        |
   | ESHOP_1 | CATALOGUE | opções de produtos |
   | ESHOP_2 | PAYMENT   | opções de pagamento|



  Scenario Outline: initialize add addFeatureToProduct
    #get produtos
    Given url 'http://localhost:8080/products'
    When method GET
    Then status <statusGetProdutos>

    #post add produto
    Given url 'http://localhost:8080/products/' + '<produto>'
    When method POST
    Then status <statusAddProdutos>

    #post add feature
    Given url 'http://localhost:8080/products/' + '<produto>' + /features/ + '<feature>'
    And form field description = '<description>'
    When method POST
    Then status <statusAddFeauture>

    Examples:
    | statusGetProdutos | statusAddProdutos | statusAddFeauture | produto | feature             | description           |
    | 200               | 201               | 201               | ESHOP_3 | CHAT                | formas de comunicação |
    | 200               | 201               | 201               | ESHOP_4 | CREDIT_CARD_PAYMENT | opções de produtos    |
    | 200               | 201               | 201               | ESHOP_0 | CREDIT_CARD_PAYMENT | opções de produtos    |
    | 200               | 201               | 500               | ESHOP_0 | CREDIT_CARD_PAYMENT | opções de produtos    |



