Feature: Login
  Verify Login Functionality

  Scenario: Perform login operation
    Given Login with username and password
      | username | password |
      | hassansalahuddin298@gmail.com | Mahnoor05 |

  Scenario: Perform false login operation
    Given Login with false username and password
      | username | password |
      | hassansalahuddin298@gmail.com | Mahnoor058 |
  
