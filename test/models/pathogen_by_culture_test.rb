# == Schema Information
#
# Table name: pathogen_by_cultures
#
#  id          :integer          not null, primary key
#  pathogen_id :integer
#  culture_id  :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class PathogenByCultureTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
