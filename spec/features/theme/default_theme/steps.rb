# frozen_string_literal: true

steps_for :"features/theme/default_theme" do
  ##
  # NOTE: Do nothing intentionally.
  #
  step "a user" do
  end

  ##
  # NOTE: How to navigate in Capybara?
  # - https://github.com/teamcapybara/capybara?tab=readme-ov-file#navigating
  #
  step "the user opens the app" do
    visit root_path
  end

  ##
  # NOTE: How to query using CSS selectors in Capybara?
  # - https://github.com/teamcapybara/capybara?tab=readme-ov-file#querying
  #
  # NOTE: How to query data attribute using CSS selectors?
  # - https://css-tricks.com/almanac/selectors/a/attribute
  #
  step "the light theme is selected by default" do
    expect(page).to have_selector(%{html[data-theme="light"]})
  end
end
