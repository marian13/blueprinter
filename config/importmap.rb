##
# NOTE: Default configuration added by `rails new`.
# NOTE: Pin additional npm packages by running `./bin/importmap`.
#
pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"

##
# NOTE: Local modules.
# - https://github.com/rails/importmap-rails?tab=readme-ov-file#local-modules
#
pin_all_from "app/javascript/tools", under: "tools", to: "tools"

##
# NOTE: Additional npm packages added by `./bin/importmap pin package`.
#
pin "js-logger" # @1.6.1
pin "query-string" # @9.0.0
pin "decode-uri-component" # @0.4.1
pin "filter-obj" # @5.1.0
pin "split-on-first" # @3.0.0
pin "lodash" # @4.17.21
