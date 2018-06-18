class Disease < ApplicationRecord
  has_many :multim

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
