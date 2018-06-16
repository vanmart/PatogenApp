require 'grape-entity'

#  id              :integer          not null, primary key
#  name            :string
#  scientific_name :string
#  description     :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null

module APINAME
  module V1
    class CultureEntity < Grape::Entity
      expose :id
      expose :name
      expose :scientific_name
      expose :description
      expose :created_at
      expose :updated_at
    end
  end
end
