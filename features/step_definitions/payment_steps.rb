Then(/^I see the payment details$/) do
  expect(page).to have_css("##{@objekt.class.name.downcase}_#{@objekt.id}")
end
