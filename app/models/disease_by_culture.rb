# == Schema Information
#
# Table name: disease_by_cultures
#
#  id         :integer          not null, primary key
#  disease_id :integer
#  culture_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class DiseaseByCulture < ApplicationRecord
  belongs_to :disease
  belongs_to :culture
end
