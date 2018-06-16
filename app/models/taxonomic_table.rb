# == Schema Information
#
# Table name: taxonomic_tables
#
#  id         :integer          not null, primary key
#  kingdom    :string
#  division   :string
#  t_class    :string
#  order      :string
#  family     :string
#  gender     :string
#  species    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class TaxonomicTable < ApplicationRecord
  has_one :pathogen
end
