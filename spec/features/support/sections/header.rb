# frozen_string_literal: true

module Sections
  class Header < ::Sections::Base
    element :theme_toggle, %{[data-action="click->theme#toggle"]}
  end
end
