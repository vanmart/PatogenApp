# == Schema Information
#
# Table name: pathogen_by_diseases
#
#  id          :integer          not null, primary key
#  disease_id  :integer
#  pathogen_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class PathogenByDiseaseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
