Feature: Rate application verifies if discount is available for product
Background: Rate application receives product information

  Scenario: Discount is available for product
  Given Rate application calls external discount system to check if discount is available
  When External discount system returns that discount is available
  Then Total price of product is calculated with discount information

  Scenario: Discount is not available for product
  Given Rate application calls external discount system to check if discount is available
  When External discount system returns that a discount is not available
  Then Total price of product is calculated with discount information

Feature: Rate application and external database are communicating correctly
Background: Rate application receives product information

  Scenario: Rate application calls the external discount system and correct product information is returned
  Given Rate application sends product information to the external discount system
  When External discount system returns to rate application
  Then Product information is the desired product

Feature: Product information not found within external discount system when discount should exist
Background: Rate application receives product information

  Scenario: External discount system returns to the rate application that product information cannot be found
  Given Rate application sends product information to external discount system
  When External discount system returns product not found
  Then Rate application returns with cannot be found error

Feature: Rate application interacts with AWS Database correctly

  Scenario: Rate application writes final product price to AWS Database
  Given Rate application calculated final product price
  When Final product price information is sent to by AWS database
  Then AWS Database stores final product price

  Scenario: AWS Database correctly stores final product price information
  Given Final product price is stored in the AWS Database
  When Rate application accesses product information
  Then Product information that was stored and accessed is the same
