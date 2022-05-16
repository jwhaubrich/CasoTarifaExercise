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

Feature: Product information not found within external discount system when discount should exist

  Scenario: External discount system returns to the rate application that product information cannot be found
  Given the rate application sent "unique product number" to external discount system
  When the external discount system returned with "product not found"
  Then the rate application displayed "product cannot be found error"

Feature: Rate application interacts with AWS Database

  Scenario: Rate application writes and reads final product price from the AWS Database
  Given the rate application calculated the "final product rate" and stored "date of calculation"
  And wrote the "final product rate" and "data of calculation" to the AWS Database
  When the rate application queried AWS Database with "unique product number" for "product information"
  Then the AWS Database returned with correct "unique product number" and "product information"
