module UrlHelpers
    def goToHomePage
		@browser.goto "http://mendeley.com"
	end
end
World(UrlHelpers)
