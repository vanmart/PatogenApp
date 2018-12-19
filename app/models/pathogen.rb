# == Schema Information
#
# Table name: pathogens
#
#  id                 :integer          not null, primary key
#  name               :string
#  description        :text
#  epidemiology       :text
#  taxonomic_table_id :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class Pathogen < ApplicationRecord
  has_many :multims
  belongs_to :taxonomic_table

  has_many :pathogen_by_cultures
  has_many :cultures, through: :pathogen_by_cultures

  has_many :pathogen_by_diseases
  has_many :diseases, through: :pathogen_by_diseases

  accepts_nested_attributes_for :taxonomic_table, :allow_destroy => true
  accepts_nested_attributes_for :multims, :allow_destroy => true

  rails_admin do

      configure :diseases do
          visible false
      end
      configure :cultures do
          visible true
      end

      configure :pathogen_by_diseases do
          visible false
      end
      configure :pathogen_by_cultures do
          visible false
      end
  end
end
