Feature: 1.1 Manage Films
  In order to orgnanise films
  As a film buff
  I want to create and manage films

  Scenario: 1.1.1 Create a film
    Given there are 0 films
    When I go to the film create page
    And I fill in "name" with "2001: A space odyssey"
    And I fill in "hours" with "2"
    And I fill in "minutes" with "35"
    And I fill in "location" with "/Volumes/H300/Films/2001.avi"
    And I press "Create"
    Then I should see "Film was successfully created"
    And I should see "2001: A space odyssey"
    And I should see "02:35"
    And I should see "/Volumes/H300/Films/2001.avi"
    And there should be 1 film

  Scenario: 1.1.2 List films
    Given the scene 4 films
    When I go to the films page
    Then I should see "Cinema Paradiso"
    And I should see "Solaris"
    And I should see "Beautiful Mind"
    And I should see "Persepolis"
    And there should be 4 films

  Scenario: 1.1.3 Delete film
    Given the scene 1 film
    When I go to the films page
    And I follow "Destroy"
    Then there should be 0 films
