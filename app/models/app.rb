class App < ApplicationRecord
  has_one_attached :archive
end

# == Schema Information
#
# Table name: apps
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
