# == Schema Information
#
# Table name: promotions
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Promotion < ApplicationRecord
  has_many :promonewsmultims
end
