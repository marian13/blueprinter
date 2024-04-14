# frozen_string_literal: true

steps_for :"features/theme/toggle" do
  step "a user" do

  end

  step "the user opens the Blueprinter app" do
    visit("/")
  end

  step "the user is redirected to the home page" do
    binding.break

    expect(page).to have_current_path(root_path)
  end

  step "the current theme is selected as the light theme by default" do

  end

  step "the user clicks on the toggle theme button in the top nav bar" do

  end

  step "the current theme is switched to the dark theme" do

  end

  step "the user clicks on the toggle theme button in the top nav bar" do

  end

  step "the current theme is switched to the light theme" do

  end
end
