Feature: Rate Application calculates final product rate

  Scenario: Rate Application obtains product price, discount information, VAT, and calculates final rate
    Given the Rate Application received discount information {float} from external discount system
    And the Rate Application has also obtained product price {float} and VAT {float} for that product
    Then Final product rate {float} was calculated
