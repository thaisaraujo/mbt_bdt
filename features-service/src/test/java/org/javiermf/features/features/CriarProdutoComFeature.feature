Feature: CriarProtudoComFeature

  Scenario Outline: initialize add deleteByName add addFeatureToProduct
    Given initialize
    When add
    And deleteByName
    And add
    And addFeatureToProduct
    Examples:
      | produto         | feature             | code |
      | ESHOP-EMPRESA_A |                     | 201  |
      | ESHOP-EMPRESA_A | CREDIT_CARD_PAYMENT | 201  |



  Scenario: initialize add addFeatureToProduct deleteFeatureOfProduct produtos deleteByName add addFeatureToProduct
    Given initialize
    When add
    And addFeatureToProduct
    And deleteFeatureOfProduct
    And produtos
    And deleteByName
    And add
    And addFeatureToProduct


  Scenario: initialize add addFeatureToProduct
    Given initialize
    When add
    And addFeatureToProduct




  Scenario: initialize add produtos addFeatureToProduct deleteFeatureOfProduct addFeatureToProduct deleteFeatureOfProduct produtos produtos deleteByName add deleteByName add addFeatureToProduct deleteFeatureOfProduct deleteByName add addFeatureToProduct deleteFeatureOfProduct addFeatureToProduct
    Given initialize
    When add
    And produtos
    And addFeatureToProduct
    And deleteFeatureOfProduct
    And addFeatureToProduct
    And deleteFeatureOfProduct
    And produtos
    And produtos
    And deleteByName
    And add
    And deleteByName
    And add
    And addFeatureToProduct
    And deleteFeatureOfProduct
    And deleteByName
    And add
    And addFeatureToProduct
    And deleteFeatureOfProduct
    And addFeatureToProduct




  Scenario: initialize add addFeatureToProduct deleteFeatureOfProduct addFeatureToProduct deleteFeatureOfProduct deleteByName add deleteByName add produtos addFeatureToProduct
    Given initialize
    When add
    And addFeatureToProduct
    And deleteFeatureOfProduct
    And addFeatureToProduct
    And deleteFeatureOfProduct
    And deleteByName
    And add
    And deleteByName
    And add
    And produtos
    And addFeatureToProduct


  Scenario: initialize add addFeatureToProduct
    Given initialize
    When add
    And addFeatureToProduct