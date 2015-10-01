Feature: Fetch audit events

  Background:
    Given I successfully run `conjur variable create $ns/secret MY_SECRET`
    And I successfully run `conjur variable value $ns/secret`
    
  Scenario: Fetch works
    When I successfully run `conjur audit resource -s variable:$ns/secret`
    Then the output should match /checked that they can execute .*:variable:.*secret/

