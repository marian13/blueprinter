# frozen_string_literal: true

module Pages
  class Base < ::SitePrism::Page
    #
    # NOTE: How to query data attribute using CSS selectors?
    # - https://css-tricks.com/almanac/selectors/a/attribute
    #
    element :light_theme, %{html[data-theme="light"]}
    element :dark_theme, %{html[data-theme="dark"]}
  end
end
