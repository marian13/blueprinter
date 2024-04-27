# frozen_string_literal: true

steps_for :"features/github/open_repo" do
  ##
  # NOTE: Do nothing intentionally.
  #
  step "a user" do
  end

  step "the user opens the app" do
    @home_page = Pages::Home.new

    @home_page.load
  end

  step "the user clicks the Open GitHub Repo link" do
    @home_page.header.open_github_repo_link.click
  end

  ##
  # NOTE: How to match current page URL?
  # - https://rubydoc.info/github/teamcapybara/capybara/master/Capybara%2FSession:current_url
  # - https://github.com/teamcapybara/capybara?tab=readme-ov-file#navigating
  #
  step "the user is redirected to the GitHub Repo page" do
    expect(page.current_url).to eq("https://github.com/marian13/blueprinter")
  end
end
