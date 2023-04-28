Feature: Activity
    Check user Activity
    Background:
        Given Login with username and password
            | username                      | password  |
            | hassansalahuddin298@gmail.com | Mahnoor05 |

    Scenario: Check my recent activity
      Given I navigate on home page
      When I select settings
      Then I should see Acount Settings
      Then I should be able to select Activity
      Then I should see my Activity
