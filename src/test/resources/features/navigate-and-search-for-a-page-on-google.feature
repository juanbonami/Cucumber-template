Feature: Navigate to a page on google.
go to google search for a page and confirm the page you want.

	Scenario: Go to google
		Given a new page
		When search result is wikipedia
		Then result should be wikipedia