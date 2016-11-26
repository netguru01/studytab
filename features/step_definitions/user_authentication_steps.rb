Given(/^I am on the login page$/) do
  visit('/users/sign_in')
end

When(/^I fill in the login form with admin credentials and press "Login"$/) do
  admin = FactoryGirl.create(:admin)
  fill_in('user_email', with: admin.email)
  fill_in('user_password', with: admin.password)
  find('.button').click
end

When(/^I fill in the login form with student credentials and press "Login"$/) do
  student = FactoryGirl.create(:student)
  fill_in('user_email', with: student.email)
  fill_in('user_password', with: student.password)
  find('.button').click
end

When(/^I fill in the login form with wrong credentials and press "Login"$/) do
  fill_in('user_email', with: 'admin@gmail.com')
  fill_in('user_password', with: 'wrong_password')
  find('.button').click
end

Then(/^page should have content "Welcome, John Doe"$/) do
  within('.sub-header') do
    expect(page).to have_content("Hello, John Doe")
  end
end

Then(/^page should have content "Welcome, Clark Kent"$/) do
  within('.sub-header') do
    expect(page).to have_content("Hello, Clark Kent")
  end
end

Then(/^page should have content "Invalid Email or password."$/) do
  expect(page).to have_content('Invalid Email or password.')
end

Then(/^I logout$/) do
  within('.logout') do
    click_link('Sign out')
  end
  expect(page).to have_content('Welcome! Please sign in.')
end