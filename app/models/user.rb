# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  account_name           :string
#  current_sign_in_at     :datetime
#  current_sign_in_ip     :string
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  last_sign_in_at        :datetime
#  last_sign_in_ip        :string
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  sign_in_count          :integer          default(0), not null
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_account_name          (account_name) UNIQUE
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#

require 'time'

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,:trackable
  validates :account_name,presence: true ,uniqueness: true

  has_many :posts,dependent: :destroy
  has_one :profile,dependent: :destroy

  def profile_image
    if profile&.profile_image&.attached?
      profile.profile_image
    else
      'default-profile.png'
    end
  end

  def last_login_hour(last_login_time)
    current_time = Time.now
    time_difference = ( current_time - last_login_time ) / 3600
    time_difference_i = time_difference.to_i
    "#{time_difference_i} hours ago"
  end
end
