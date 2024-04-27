# frozen_string_literal: true

steps_for :"features/language/default_language" do
  ##
  # NOTE: Do nothing intentionally.
  #
  step "a user" do
  end

  step "the user opens the app" do
    @home_page = Pages::Home.new

    @home_page.load
  end

  step "the English language is selected by default" do
    byebug

    byebug

    expect(@home_page.generate_app_button.text).to eq("Generate App")
  end
end
