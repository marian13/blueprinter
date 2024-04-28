# frozen_string_literal: true

require_relative "pages/base"
require_relative "pages/home"

class App
  def home_page
    @home_page ||= ::Pages::Home.new
  end
end

def app
  @app ||= ::App.new
end
