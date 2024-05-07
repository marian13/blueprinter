# frozen_string_literal: true

module Sections
  class Header < ::Sections::Base
    element :toggle_theme_button, %([data-test-id="toggle_theme_button"])

    element :open_github_repo_link, %([data-test-id="open_github_repo_link"])

    element :open_language_selection_modal_button, %([data-test-id="open_language_selection_modal_button"])
  end
end
