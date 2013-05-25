module Generators
  class GuardGenerator < Rails::Generators::Base
    source_root File.expand_path('../templates', __FILE__)

    def create_guardfile
      copy_file "Guardfile", "Guardfile"
    end

    def add_gems
      gem_group :development do
        gem "guard"
        gem "guard-rspec"
        gem "guard-bundler"
        gem "guard-pow"
        gem 'terminal-notifier-guard'
        gem 'rb-fsevent'
      end
    end

    def run_bundler
      run("bundle")
    end

    def print_instructions
      readme("POSTINSTALL")
    end
  end
end
