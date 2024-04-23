class Instruction < ApplicationRecord
  belongs_to :recipe
end

# == Schema Information
#
# Table name: instructions
#
#  id         :bigint           not null, primary key
#  text       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
