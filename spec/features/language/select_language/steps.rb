# frozen_string_literal: true

steps_for :"features/language/select_language" do
  ##
  # NOTE: Do nothing intentionally.
  #
  step "a user" do
  end

  step "the user opens the app" do
    app.home_page.load

    @previous_page_loaded_at_value = app.home_page.meta.page_loaded_at_value
    @previous_language_value = app.home_page.current_language_value
  end

  step "the user clicks on the Open Language Selection Modal button" do
    app.home_page.header.open_language_selection_modal_button.click
  end

  step "the user selects the English Language option" do
    app.home_page.language_selection_modal.english_option.click
  end

  step "the user selects the Ukrainian Language option" do
    app.home_page.language_selection_modal.ukrainian_option.click
  end

  step "the user clicks the Confirm Language Selection button" do
    app.home_page.language_selection_modal.confirm_button.click
  end

  step "the user clicks the Cancel Language Selection button" do
    app.home_page.language_selection_modal.cancel_button.click
  end

  step "the current page is reloaded" do
    expect(app.home_page.meta.page_loaded_at).not_to match_selector(%([data-value="#{@previous_page_loaded_at_value}"]))
  end

  step "the current page is NOT reloaded" do
    expect(app.home_page.meta.page_loaded_at).to match_selector(%([data-value="#{@previous_page_loaded_at_value}"]))
  end

  step "the language is switched to the English language" do
    expect(app.home_page.generate_app_button).to have_content("Generate App")
  end

  step "the language is switched to the Ukrainian language" do
    expect(app.home_page.generate_app_button).to have_content("Згенерувати Застосунок")
  end

  step "the language selection modal is closed" do
    expect(app.home_page).not_to have_language_selection_modal
  end

  step "the language is NOT switched" do
    expect(app.home_page.current_language).to match_selector(%([lang="#{@previous_language_value}"]))
  end
end
