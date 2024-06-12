# frozen_string_literal: true

# rubocop:disable Lint/Debugger
step "I debug" do
  byebug
  byebug
end
# rubocop:enable Lint/Debugger

# rubocop:disable Lint/Debugger
step "I debug with byebug" do
  byebug
  byebug
end
# rubocop:enable Lint/Debugger

# rubocop:disable Lint/Debugger
step "I debug with binding.irb" do
  binding.irb
end
# rubocop:enable Lint/Debugger

# rubocop:disable Lint/Debugger
step "I debug with binding.break" do
  binding.break
end
# rubocop:enable Lint/Debugger

# rubocop:disable Lint/Debugger
step "I debug with binding.pry" do
  binding.pry
end
# rubocop:enable Lint/Debugger
