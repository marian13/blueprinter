# frozen_string_literal: true

module Sections
  class Meta < ::Sections::Base
    element :page_loaded_at_container, %{[data-test-id="page_loaded_at"]}, visible: false

    ##
    # NOTE: How to get attribute value?s
    # - https://stackoverflow.com/questions/25311852/getting-value-from-data-value-attribute-in-capybara
    #
    def page_loaded_at
      page_loaded_at_container["data-value"]
    end
  end
end
