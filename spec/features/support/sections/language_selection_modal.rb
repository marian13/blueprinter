# frozen_string_literal: true

module Sections
  class LanguageSelectionModal < ::Sections::Base
    element :english_option, %{[data-test-id="english_option"]}
    element :ukrainian_option, %{[data-test-id="ukrainian_option"]}

    element :cancel_button, %{[data-test-id="cancel_button"]}
    element :confirm_button, %{[data-test-id="confirm_button"]}
  end
end
