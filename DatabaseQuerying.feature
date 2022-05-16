Feature: Rate Application interacts with AWS Database

  Scenario: Rate Application writes and reads final product price from the AWS Database
  Given the Rate Application calculated the final product rate {float} and retrieved current day of calculation {int}
  And wrote the unique product number {int}, final product rate {float} and date of calculation {int} to the AWS Database
  When the Rate Application queried AWS Database with unique product number {int} for product information
  Then the AWS Database returned with correct unique product number {int} and correct product information
