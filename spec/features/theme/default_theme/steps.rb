# frozen_string_literal: true

steps_for :"features/theme/default_theme" do
  ##
  # NOTE: Do nothing intentionally.
  #
  step "a user" do
  end

  step "the user opens the app" do
    @home_page = Pages::Home.new

    @home_page.load
  end

  step "the light theme is selected by default" do
    expect(@home_page).to have_light_theme
  end
end
