Feature: Rate Application verifies if discount is available for product
Background: Rate Application receives product information

  Scenario: Discount is available for product
  Given the Rate Application sent unique product number {int} to the external discount system
  When the external discount system returned with product name {string}, number {int}, and discount {float}
  Then the Rate Application stated that a discount is available

  Scenario: Discount is not available for product
  Given the Rate Application sent unique product number {int} to the external discount system
  When the external discount system returned with product name {string}, number {int}, and no discount
  Then the Rate Application stated that no discount is available

  Scenario: External discount system returns to the Rate Application that product information cannot be found
  Given the Rate Application sent unique product number {int} to external discount system
  When the external discount system returned with product not found {string}
  Then the Rate Application displayed product cannot be found error {string}
