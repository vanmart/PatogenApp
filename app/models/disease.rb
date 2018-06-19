# == Schema Information
#
# Table name: diseases
#
#  id              :integer          not null, primary key
#  name            :string
#  symptom         :text
#  economic_damage :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Disease < ApplicationRecord
  has_many :multim

  has_many :pathogen_by_diseases
  has_many :pathogens, through: :pathogen_by_diseases

  has_many :disease_by_cultures
  has_many :cultures, through: :disease_by_cultures

  accepts_nested_attributes_for :multim, :allow_destroy => true
  #accepts_nested_attributes_for :pathogens, :allow_destroy => true
  #accepts_nested_attributes_for :cultures, :allow_destroy => true

  rails_admin do
      configure :pathogens do
          visible true
      end
      configure :cultures do
          visible true
      end
      configure :pathogen_by_diseases do
          visible false
      end
      configure :disease_by_cultures do
          visible false
      end
  end
end
