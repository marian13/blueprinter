# frozen_string_literal: true

step "I debug" do
  byebug
  byebug
end

step "I debug with byebug" do
  byebug
  byebug
end

step "I debug with binding.irb" do
  binding.irb
end

step "I debug with binding.break" do
  binding.break
end

step "I debug with binding.pry" do
  binding.pry
end
