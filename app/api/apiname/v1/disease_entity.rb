require 'grape-entity'

#  id         :integer          not null, primary key
#  name       :string
#  symptom    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null

module APINAME
  module V1
    class DiseaseEntity < Grape::Entity
      expose :id
      expose :name
      expose :symptom
      expose :created_at
      expose :updated_at
    end
  end
end
