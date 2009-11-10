Feature: REST calls to bit.ly API
	In order to use bitly url shortening services
	As a user
	I want to make API calls and get information about a URL

	Scenario: Create a short url when correct login and api key is present
		Given I use "correct" "bit.ly" login name as "bitlyapidemo"
		And I use "correct" "bit.ly" api key as "R_0da49e0a9118ff35f52f629d2d71bf07"
		And I use "correct" credentials
		And "bit.ly" is online
		When I submit a request to shorten the url "http://www.github.com/nas"
		Then I should get the response from "bit.ly"
		And the shorten url should be "http://bit.ly/6NaDb"
		And the hash should be "2oV4lu"
	
	Scenario: Expand a hash when correct login and api key is present
		Given I use "correct" "bit.ly" login name as "bitlyapidemo"
		And I use "correct" "bit.ly" api key as "R_0da49e0a9118ff35f52f629d2d71bf07"
		And I use "correct" credentials
		And "bit.ly" is online
		When I submit a request to expand a short url using hash
		Then I should get the response from "bit.ly"
		And the expanded url should be "http://www.github.com/nas"
	
	Scenario: Expand a short url when correct login and api key is present
		Given I use "correct" "bit.ly" login name as "bitlyapidemo"
		And I use "correct" "bit.ly" api key as "R_0da49e0a9118ff35f52f629d2d71bf07"
		And I use "correct" credentials
		And "bit.ly" is online
		When I submit a request to expand a short url using short url
		Then I should get the response from "bit.ly"
		And the expanded url should be "http://www.github.com/nas"
