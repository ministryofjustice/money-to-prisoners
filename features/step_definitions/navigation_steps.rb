When(/^I visit "(.*?)"$/) do |desired_path|
  visit desired_path
end

When(/^I view that (\w+)$/) do |klass|
  visit polymorphic_url(@objekt)
end

