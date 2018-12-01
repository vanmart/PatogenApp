# == Schema Information
#
# Table name: importantnews
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Importantnews < ApplicationRecord
  has_many :promonewsmultims
  has_many :comments
end
