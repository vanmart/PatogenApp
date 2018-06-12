require 'grape-entity'

module APINAME
  module V1
    class UserEntity < Grape::Entity
      expose :id
      expose :email
      expose :created_at
    end
  end
end
