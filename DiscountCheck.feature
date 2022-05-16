Feature: Rate application verifies if discount is available for product
Background: Rate application receives product information

  Scenario: Discount is available for product
  Given the rate application sent "unique product number" to the external discount system
  When the external discount system returned with "product" and "discount information"
  Then "final product rate" was calculated with "discount information"

  Scenario: Discount is not available for product
  Given the rate application sent "unique product number" to the external discount system
  When the external discount system returned with "product" and "no product discount"
  Then "final product rate" was calculated without discount

  Scenario: External discount system returns to the rate application that product information cannot be found
  Given the rate application sent "unique product number" to external discount system
  When the external discount system returned with "product not found"
  Then the rate application displayed "product cannot be found error"
