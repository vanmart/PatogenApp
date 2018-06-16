# == Schema Information
#
# Table name: multims
#
#  id          :integer          not null, primary key
#  link        :string
#  multim_type :integer
#  culture_id  :integer
#  pathogen_id :integer
#  disease_id  :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Multim < ApplicationRecord
  belongs_to :culture, :optional => true
  belongs_to :pathogen, :optional => true
  belongs_to :disease, :optional => true

  enum multim_type: { Video: 0,
                Audio: 1,
                Imagen:2
              }
end
