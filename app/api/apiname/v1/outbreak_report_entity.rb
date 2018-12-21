require 'grape-entity'

# == Schema Information
#
# Table name: outbreak_reports
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  report_type :integer
#  content     :text
#  imagen      :string
#  audio       :string
#  latitude    :float
#  longitude   :float
#  altitude    :float
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

module APINAME
  module V1
    class OutbreakReportEntity < Grape::Entity
      expose :id
      expose :user_id
      expose :report_type
      expose :content
      expose :imagen
      expose :audio
      expose :latitude
      expose :longitude
      expose :altitude
      expose :created_at
      expose :updated_at
    end
  end
end
