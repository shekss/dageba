class LoginPage
  include PageObject
  include RSpec::Matchers

  button :click, value: 'Log in'
end