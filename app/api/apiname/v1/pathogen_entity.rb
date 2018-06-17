require 'grape-entity'

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

module APINAME
  module V1
    class PathogenEntity < Grape::Entity
      expose :id
      expose :name
      expose :scientific_name
      expose :description
      expose :epidemiology
      expose :economic_damage
      expose :taxonomic_table_id
      expose :created_at
      expose :updated_at
    end
  end
end
