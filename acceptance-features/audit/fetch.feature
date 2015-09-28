Feature: Fetch audit events

  Background:
    Given I run `conjur variable create $ns/secret MY_SECRET`
    And I run `conjur variable value $ns/secret`
    
  Scenario: Fetch works
    When I run `conjur audit resource -s variable:$ns/secret`
    Then the output should match /checked that they can read .*:variable:$ns\/secret/

