# frozen_string_literal: true

steps_for :"features/language/select_language" do
  ##
  # NOTE: Do nothing intentionally.
  #
  step "a user" do

  end

  step "the user opens the app" do
    @home_page = Pages::Home.new

    @home_page.load

    @previous_page_loaded_at = @home_page.meta.page_loaded_at
  end

  step "the user clicks on the Open Language Selection Modal button" do
    @home_page.header.open_language_selection_modal_button.click
  end

  step "the user selects the English Language option" do
    @home_page.language_selection_modal.english_option
  end

  step "the user selects the Ukrainian Language option" do
    @home_page.language_selection_modal.ukrainian_option
  end

  step "the user clicks the Confirm Language Selection button" do
    @home_page.language_selection_modal.confirm_button.click
  end

  step "the user clicks the Cancel Language Selection button" do
    @home_page.language_selection_modal.cancel_button.click
  end

  step "the current page is reloaded" do
    expect(@home_page.meta.page_loaded_at).not_to eq(@previous_page_loaded_at)
  end

  step "the current page is NOT reloaded" do
    expect(@home_page.meta.page_loaded_at).to eq(@previous_page_loaded_at)
  end

  step "the language is switched to the English language" do
    expect(@home_page.generate_app_button.text).to eq("Generate App")
  end

  step "the language is switched to the Ukrainian language" do
    expect(@home_page.generate_app_button.text).to eq("Згенерувати Застосунок")
  end

  step "the language selection modal is closed" do

  end

  step "the language is NOT switched" do

  end
end
