# frozen_string_literal: true

module Sections
  class Meta < ::Sections::Base
    ##
    # NOTE: How to get attribute values?
    # - https://stackoverflow.com/questions/25311852/getting-value-from-data-value-attribute-in-capybara
    #
    element :page_loaded_at, %([data-test-id="page_loaded_at"]), visible: false

    def page_loaded_at_value
      page_loaded_at["data-value"]
    end
  end
end
