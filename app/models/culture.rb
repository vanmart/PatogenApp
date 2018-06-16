# == Schema Information
#
# Table name: cultures
#
#  id              :integer          not null, primary key
#  name            :string
#  scientific_name :string
#  description     :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Culture < ApplicationRecord
  #has_many :pathogens_by_culture
  #has_many :pathogens, through: :pathogens_by_culture

  #has_many :diseases_by_culture
  #has_many :diseases, through: :diseases_by_culture

  has_many :multims
end
