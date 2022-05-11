Feature: Final price of product is calculated with or without product discount.

  Scenario: Customer scans a product and no discount is applied to the final price.
  Given: A product is scanned into the main system
  When: Rate application determines that no discount can be applied to the product
  Then: Final price of product is calculated and sent to database

  Scenario: Customer scans a product and a discount is applied to the final price.
  Given: A product is scanned into the main system
  When: Rate application determines that discount can be applied to the product
  Then: Final price of product is calculated and sent to database

Feature: The product has been scanned more than once.

  Scenario: Customer scans the same product more than once.
  Given: A product is scanned into the main system
  When: Rate application determines that the product price has already been calculated
  Then: Final product price is returned from the AWS Dynamo database
