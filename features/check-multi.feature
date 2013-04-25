Feature: Check multiple states

  Scenario: All ok

    When I run check-multi "name 0,0,0,0"

    Then the exit status is 0
    And the message is "name OK: 4 ok"

  Scenario: Some unknown

    When I run check-multi "name 0,0,0,3"

    Then the exit status is 3
    And the message is "name UNKNOWN: 1 unknown, 3 ok"

  Scenario: Some warning

    When I run check-multi "name 0,1,0,3"

    Then the exit status is 1
    And the message is "name WARNING: 1 warning, 1 unknown, 2 ok"

  Scenario: Some critical

    When I run check-multi "name 0,1,2,3"

    Then the exit status is 2
    And the message is "name CRITICAL: 1 critical, 1 warning, 1 unknown, 1 ok"
