# == Schema Information
#
# Table name: pathogens
#
#  id                 :integer          not null, primary key
#  name               :string
#  scientific_name    :string
#  description        :text
#  epidemiology       :text
#  economic_damage    :text
#  taxonomic_table_id :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class Pathogen < ApplicationRecord
  has_many :multim
  belongs_to :taxonomic_table

  has_many :pathogen_by_cultures
  has_many :cultures, through: :pathogen_by_cultures

  has_many :pathogen_by_diseases
  has_many :diseases, through: :pathogen_by_diseases

  rails_admin do
      configure :pathogen_by_diseases do
          visible false
      end
      configure :pathogen_by_cultures do
          visible false
      end
  end
end
