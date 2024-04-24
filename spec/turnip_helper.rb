# frozen_string_literal: true

##
# NOTE: Sets up RSpec.
#
require "spec_helper"

##
# NOTE: Sets up Rails for usage with RSpec.
#
require "rails_helper"

##
# NOTE: Sets up Capybara for usage with RSpec.
# - https://github.com/teamcapybara/capybara?tab=readme-ov-file#using-capybara-with-rspec
#
# NOTE:
#   RSpec and Capybara have identically named methods `all` and `within`.
#   Capybara monkey patches those methods to avoid collisions.
#   See the last sentence of "Using Capybara with RSpec" section.
# - https://github.com/teamcapybara/capybara?tab=readme-ov-file#using-capybara-with-rspec
# - https://github.com/teamcapybara/capybara/blob/master/lib/capybara/rspec/matcher_proxies.rb
#
require "capybara/rspec"

##
# NOTE: Sets up RSpec for usage with Turnip.
# - https://github.com/jnicklas/turnip/tree/master?tab=readme-ov-file#installation
# - https://github.com/jnicklas/turnip/blob/master/lib/turnip/rspec.rb
#
require "turnip/rspec"

##
# NOTE: Sets up Capybara for usage with Turnip.
# - https://github.com/jnicklas/turnip?tab=readme-ov-file#using-with-capybara
# - https://github.com/jnicklas/turnip/blob/master/lib/turnip/capybara.rb
#
require "turnip/capybara"

##
# NOTE: Load Site Prism sections.
#
require_relative "features/support/sections"

##
# NOTE: Load Site Prism pages.
#
require_relative "features/support/pages"

##
# NOTE: Loads step definitions files. Their names are ending with `steps.rb`.
# - https://github.com/jnicklas/turnip?tab=readme-ov-file#where-to-place-steps
#
Dir.glob("spec/**/*steps.rb") { |file| load(file, true) }

##
# NOTE: Executes initializers.
#
require_relative "features/support/initializers"

RSpec.configure do |config|
  ##
  # NOTE: Considers implemented Turnip steps as pending.
  # - https://github.com/jnicklas/turnip?tab=readme-ov-file#unimplemented-steps
  #
  config.raise_error_for_unimplemented_steps = false
end

puts "[Turnip] `turnip_helper` loaded"
