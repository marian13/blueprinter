# frozen_string_literal: true

module Pages
  class Base < ::SitePrism::Page
    section :meta, ::Sections::Meta, "html"
    section :language_selection_modal, ::Sections::LanguageSelectionModal, %([data-test-id="language_selection_modal"])

    ##
    # NOTE: How to query data attribute using CSS selectors?
    # - https://css-tricks.com/almanac/selectors/a/attribute
    #
    element :light_theme, %(html[data-theme="light"])
    element :dark_theme, %(html[data-theme="dark"])

    ##
    # - https://github.com/teamcapybara/capybara?tab=readme-ov-file#asynchronous-javascript-ajax-and-friends
    # - https://thoughtbot.com/blog/write-reliable-asynchronous-integration-tests-with-capybara#summary
    # - https://rubydoc.info/github/jnicklas/capybara/master/Capybara/Node/Base#synchronize-instance_method
    #
    element :current_language, %(html[lang])
    element :english_language, %(html[lang="en"])
    element :ukrainian_language, %(html[lang="ua"])

    def current_language_value
      current_language["lang"]
    end
  end
end
