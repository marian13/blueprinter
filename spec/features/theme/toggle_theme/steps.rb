# frozen_string_literal: true

##
# NOTE: What is a scoped steps (`steps_for`)?
# - https://github.com/jnicklas/turnip?tab=readme-ov-file#scoped-steps
#
steps_for :"features/theme/toggle_theme" do
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
  step "the light theme is selected" do
    page.find(%{[data-action="click->theme#toggle"]}).click unless page.has_selector?(%{html[data-theme="light"]})

    expect(page).to have_selector(%{html[data-theme="light"]})
  end

  step "the dark theme is selected" do
    page.find(%{[data-action="click->theme#toggle"]}).click unless page.has_selector?(%{html[data-theme="dark"]})

    expect(page).to have_selector(%{html[data-theme="dark"]})
  end

  step "the user clicks on the toggle theme button" do
    page.find(%{[data-action="click->theme#toggle"]}).click
  end

  step "the theme is switched to the dark theme" do
    expect(page).to have_selector(%{html[data-theme="dark"]})
  end

  step "the theme is switched to the light theme" do
    expect(page).to have_selector(%{html[data-theme="light"]})
  end
end
