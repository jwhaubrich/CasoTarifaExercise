Feature: Rate application interacts with AWS Database

  Scenario: Rate application writes and reads final product price from the AWS Database
  Given the rate application calculated the "final product rate" and stored "date of calculation"
  And wrote the "final product rate" and "data of calculation" to the AWS Database
  When the rate application queried AWS Database with "unique product number" for "product information"
  Then the AWS Database returned with correct "unique product number" and "product information"
