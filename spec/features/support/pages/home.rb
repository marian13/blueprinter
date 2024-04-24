# frozen_string_literal: true

module Pages
  class Home < ::Pages::Base
    set_url "/"

    section :header, ::Sections::Header, "body header"
  end
end
