Given(/^(\d+) (\w+) exist$/) do |count, klass|
  create_list(klass.singularize.to_sym, count.to_i)
end

Then(/^I see (\d+) (\w+)$/) do |count, klass|
  expect(page).to have_selector(".#{klass.singularize}", count: count.to_i)
end
