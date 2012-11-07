Given /^I have (\d+) cukes$/ do |cukes|
    @browser.goto "http://cukes.info"
    assert_not_nil(cukes)
end

When /^I add (\d+) cukes$/ do |cukes|
    @browser.goto "http://cukes.info"
    assert(cukes != "blah")
end

Then /^I should have (\d+) lovely cukes$/ do |cukes|
    goToHomePage
    assert(cukes == "12")
end
