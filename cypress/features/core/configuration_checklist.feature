Feature: Configuration Checklist

As an administrator 
I want to see appropriate configurations are available to me

Scenario: Login as administrator

Given I am an "admin" user who logs into REDCap 
Then I visit the "Control Center"
Then I should see "My Projects"
And I should see "New Project"
And I should see "Help & FAQ"
And I should see "Control Center"
