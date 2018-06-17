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


  #has_many :diseases_by_culture
  #has_many :diseases, through: :diseases_by_culture

  has_many :multims

  has_many :pathogen_by_cultures
  has_many :pathogens, through: :pathogen_by_cultures

  has_many :disease_by_cultures
  has_many :diseases, through: :disease_by_cultures


  rails_admin do
      configure :pathogen_by_cultures do
          visible false
      end
      configure :disease_by_cultures do
          visible false
      end
  end

end
