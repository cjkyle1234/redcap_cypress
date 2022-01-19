Feature: Assign User Rights

As a standard user
I want to verify the functionality of the user rights module 

Background:
	Given I am a "standard" user who logs into REDCap
	And I visit the "" 

Scenario: Visit a project I have access to
	When I click on the link labeled "My Projects"
	And I click on the link labeled "Test Project"
	Then I should see "Project Home"
	And I should see "Codebook"
	And I should see "Record Status Dashboard"
	And I should see "Add / Edit Records"


 Scenario: Administrator vs standard user access
	When I click on the link labeled "My Projects"
	And I click on the link labeled "Test Project"
	Then I should see "User Rights"
	And I click on the link labeled "User Rights"
	When I click on the link labeled "test_user"
	And I click on the link labeled "Expiration date"
	And I click on the button labeled "never"
	And I click on the button labeled "Save Changes"
	Then I should see "Expiration" for "test_user"
	When I click on the link labeled "Log Out"
	Then I should see "Successful logout"

	Given I am a "standard" user who logs into REDCap
	And I visit the "" 
	
	When I click on the link labeled "My Projects"
	And I click on the link labeled "Test Project"
	Then I should see "Your access to this particular REDCap porject has expired."

	When I click on the link labeled "logout"
	Then I should see 'Successful logout'