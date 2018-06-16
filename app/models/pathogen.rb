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
  has_many :pathogens_by_diseases
end
