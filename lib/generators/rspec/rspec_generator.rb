module Generators
  class RspecGenerator < Rails::Generators::Base
    source_root File.expand_path('../templates', __FILE__)

    def add_gems
      gem_group :test, :development do
        gem "turnip"
        gem 'rspec-rails'
        gem "capybara_rails"
        gem "launchy"
        gem "feedzirra"
        gem "factory_girl_rails"
      end
    end

    def run_bundler
      run("bundle")
    end

    def run_generators
      generate ""
    end

    def print_instructions
      readme("POSTINSTALL")
    end
  end
end
