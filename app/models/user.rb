# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  name                   :string           not null
#  phone                  :string           not null
#

class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  after_create :assign_default_role


  before_save { email.downcase! }


  validates :name, presence: true,
                    format: { with: /\A\S[a-z ñ A-Z Ñ\s]*\S\z/ }


  validates :phone, presence: true,
                    :numericality => {:only_integer => true}
  validates :email, presence: true,
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
                    uniqueness: { case_sensitive: false }

  #validates :last_name, presence: true,format: { with: /\A\S[a-z ñ A-Z Ñ\s]*\S\z/ }
  #validates :address, presence: true

  #validates :document, presence: true,:numericality => {:only_integer => true},uniqueness: { case_sensitive: false }


  def assign_default_role
    #self.add_role(:RegularUser) if self.roles.blank?
    self.add_role(:RegularUser)
  end
end
