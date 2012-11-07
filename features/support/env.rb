require 'rubygems'
require 'watir-webdriver'
require 'test/unit/assertions'

browser = Watir::Browser.new

World(Test::Unit::Assertions)

#BEFORE ALL
Before do
	@browser = browser
end

#AFTER ALL
at_exit do
	unless ENV["STAY_OPEN"]
		browser.close
	end
end
