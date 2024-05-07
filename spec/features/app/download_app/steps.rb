# frozen_string_literal: true

steps_for :"features/app/download" do
  ##
  # NOTE: Do nothing intentionally.
  #
  # NOTE: Use `skip` to mark features/steps as pending.
  # - https://rubydoc.info/gems/rspec-core/RSpec/Core/Pending
  #
  step "a user" do
  end

  step "the user opens the home page" do
    app.home_page.load
  end

  step "the user clicks the Generate App button" do
    app.home_page.generate_app_button.click
  end

  step "the system starts app generation" do
  end

  step "the Generate App button is replaced by the disabled Preparing App button" do
    expect(app.home_page).not_to have_generate_app_button
    expect(app.home_page).to have_preparing_app_button
    expect(app.home_page.preparing_app_button).to match_selector("[disabled=true]")
  end

  step "the system finishes app generation" do
  end

  step "the Preparing App button is replaced by the Download App button" do
    expect(app.home_page).not_to have_preparing_app_button
    expect(app.home_page).to have_download_app_button
  end

  step "the user clicks the Download App button" do
    app.home_page.download_app_button.click
  end

  step "the user's browser starts downloading a zip file with the newly generated application" do
  end
end
