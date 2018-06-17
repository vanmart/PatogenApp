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

  #has_many :pathogens

  has_many :pathogen_by_diseases
  has_many :pathogens, through: :pathogen_by_diseases

  has_many :disease_by_cultures
  has_many :cultures, through: :disease_by_cultures


  rails_admin do
      configure :pathogen_by_diseases do
          visible false
      end
      configure :disease_by_cultures do
          visible false
      end
  end
end
