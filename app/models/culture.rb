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

  has_many :multim

  has_many :pathogen_by_cultures
  has_many :pathogens, through: :pathogen_by_cultures

  has_many :disease_by_cultures
  has_many :diseases, through: :disease_by_cultures

  accepts_nested_attributes_for :multim, :allow_destroy => true
  #accepts_nested_attributes_for :pathogens, :allow_destroy => true
  #accepts_nested_attributes_for :diseases, :allow_destroy => true

  rails_admin do

      configure :diseases do
          visible false
      end

      configure :pathogen_by_cultures do
          visible false
      end
      configure :disease_by_cultures do
          visible false
      end
  end

end
