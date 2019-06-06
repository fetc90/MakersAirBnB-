require './lib/user'
require './lib/dreambnb'

def signup_user
  visit '/'
  fill_in('email', with: 'test@test.com')
  fill_in('password', with: '123')
  fill_in('password_confirmation', with: '123')
  click_button('sign_up')
end

def visit_login_page
  visit '/'
  click_link('Login')
end
