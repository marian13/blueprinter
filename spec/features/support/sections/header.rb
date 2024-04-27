# frozen_string_literal: true

module Sections
  class Header < ::Sections::Base
    element :theme_toggle, %{[data-action="click->theme#toggle"]}

    element :open_github_repo_link, %{[data-test-id="open_github_repo_link"]}
  end
end
