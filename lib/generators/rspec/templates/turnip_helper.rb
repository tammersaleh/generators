Dir.glob("spec/acceptance/**/*_steps.rb") { |f| load f, true }

require 'turnip/capybara'
