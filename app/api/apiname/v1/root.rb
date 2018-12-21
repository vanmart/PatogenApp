require 'grape'
# app/api/apiname/v1/root.rb
module APINAME
  module V1
    class Root < Grape::API
      mount APINAME::V1::Users
      mount APINAME::V1::Cultures
      mount APINAME::V1::Diseases
      mount APINAME::V1::Pathogens
      mount APINAME::V1::Sessions
      mount APINAME::V1::OutbreakReports

      #mount API::V1::Authors
    end
  end
end
