require 'cucumber/rails'
ActionController::Base.allow_rescue = false

begin
  require 'database_cleaner'
  require 'database_cleaner/cucumber'

  DatabaseCleaner.strategy = :truncation
rescue NameError
  raise "You need to add database_cleaner to your Gemfile (in the :test group) if you wish to use it."
end

Around do |scenario, block|
  DatabaseCleaner.cleaning(&block)
end

Cucumber::Rails::Database.javascript_strategy = :truncation
Capybara.default_driver = :selenium
Capybara.page.driver.browser.manage.window.maximize

