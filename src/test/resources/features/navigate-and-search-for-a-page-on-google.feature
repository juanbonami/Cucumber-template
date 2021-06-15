Feature: Navigate to a page on google.
go to google search for a page and confirm the page you want.

	Scenario: Go to google
		Given navigate to google
		When enter search query
		Then return web element for confirmation 