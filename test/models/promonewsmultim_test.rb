# == Schema Information
#
# Table name: promonewsmultims
#
#  id               :integer          not null, primary key
#  promotion_id     :integer
#  multim_type      :integer
#  importantnews_id :integer
#  reference        :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'test_helper'

class PromonewsmultimTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
