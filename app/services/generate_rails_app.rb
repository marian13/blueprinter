# frozen_string_literal: true

class GenerateRailsApp
  include ApplicationService::Config

  step ExecuteRailsNew,
    out: :name
end
