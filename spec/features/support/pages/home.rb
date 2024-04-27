# frozen_string_literal: true

module Pages
  class Home < ::Pages::Base
    set_url "/"

    section :header, ::Sections::Header, "body header"

    element :generate_app_button, %{[data-test-id="generate_app_button"]}
  end
end
