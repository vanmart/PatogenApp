# == Schema Information
#
# Table name: diseases
#
#  id         :integer          not null, primary key
#  name       :string
#  symptom    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Disease < ApplicationRecord
  #has_many :diseases_by_culture
  #belongs_to :pathogens_by_culture
  has_many :multim
  has_many :pathogens_by_diseases

  #has_many :pathogens

end
