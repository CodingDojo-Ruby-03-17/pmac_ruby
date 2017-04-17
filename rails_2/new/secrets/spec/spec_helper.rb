def log_in email: "me@mines.com", password: "password"
  visit '/sessions/new' unless current_path == "/sessions/new"
  fill_in 'Email', with: email
  fill_in 'Password', with: password
  click_button 'Log In'
end
# The code below should already be included in your file
RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end
  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
end
