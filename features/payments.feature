Feature: manage payments
  As a person responsible for maintaining the ledger
  I want to be able to create, read, update and delete payments

  Scenario: View payments
    Given 3 payments exist
    When I visit "payments"
    Then I see 3 payments
