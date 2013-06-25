Feature: A user can create a web page
	In order to use flashbulb 
	As John 
	I want to be able to create a temporary web page

What we know:
=============
- a user can click a button to create a custom webpage
- a user can specify how long this webpage will exit for
- a user can specify the url of this webpage

Scenario: User can create a temporary webpage
Given I am on the home page
And I can press create new page
And I should be able to specify a URL for my new web page
And I should be able to specify a duration for my new web page
