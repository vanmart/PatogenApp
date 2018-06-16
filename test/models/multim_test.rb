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

require 'test_helper'

class MultimTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
