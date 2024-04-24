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
  # NOTE: How to navigate with Capybara?
  # - https://github.com/teamcapybara/capybara?tab=readme-ov-file#navigating
  #
  # NOTE: How to navigate with Site Prism?
  # - https://github.com/site-prism/site_prism?tab=readme-ov-file#navigating-to-a-page
  #
  step "the user opens the app" do
    @home_page = Pages::Home.new

    @home_page.load
  end

  ##
  # NOTE: How to query using CSS selectors in Capybara?
  # - https://github.com/teamcapybara/capybara?tab=readme-ov-file#querying
  #
  # NOTE: How to check existence with Site Prism?
  # - https://github.com/site-prism/site_prism?tab=readme-ov-file#testing-for-the-existence-of-the-element
  #
  step "the light theme is selected" do
    @home_page.header.theme_toggle.click unless @home_page.has_light_theme?

    expect(@home_page).to have_light_theme
  end

  step "the dark theme is selected" do
    @home_page.header.theme_toggle.click unless @home_page.has_dark_theme?

    expect(@home_page).to have_dark_theme
  end

  step "the user clicks on the Toggle Theme button" do
    @home_page.header.theme_toggle.click
  end

  step "the theme is switched to the dark theme" do
    expect(@home_page).to have_dark_theme
  end

  step "the theme is switched to the light theme" do
    expect(@home_page).to have_light_theme
  end
end
