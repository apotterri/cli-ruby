Feature: List known public key names for a user

  Background:
    Given I successfully run `conjur user create alice@$ns`
    And I successfully run `ssh-keygen -t rsa -C "laptop" -N "" -f ./id_alice_$ns`

  Scenario: Initial key names list is empty
    When I run `conjur pubkeys names alice@$ns`
    Then the stdout from "conjur pubkeys names alice@$ns" should contain exactly ""

  Scenario: After adding a key, the key name is shown
    Given I successfully run `conjur pubkeys add alice@$ns @id_alice_$ns.pub`
    And I run `conjur pubkeys names alice@$ns`
    Then the stdout from "conjur pubkeys names alice@$ns" should contain exactly:
    """
    laptop\n
    """

  Scenario: After deleting the key, the key names list is empty again
    Given I successfully run `conjur pubkeys add alice@$ns @id_alice_$ns.pub`
    And I successfully run `conjur pubkeys delete alice@$ns laptop`
    And I run `conjur pubkeys names alice@$ns`
    Then the stdout from "conjur pubkeys names alice@$ns" should contain exactly ""
