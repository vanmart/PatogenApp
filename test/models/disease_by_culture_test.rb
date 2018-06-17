# == Schema Information
#
# Table name: disease_by_cultures
#
#  id         :integer          not null, primary key
#  disease_id :integer
#  culture_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class DiseaseByCultureTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
