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
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,:trackable
  validates :account_name,presence: true ,uniqueness: true

  has_many :posts,dependent: :destroy
  has_many :likes,dependent: :destroy
  has_one :profile,dependent: :destroy

  def profile_image
    if profile&.profile_image&.attached?
      profile.profile_image
    else
      'default-profile.png'
    end
  end

  # likeテーブルにview側で表示しているpost_idが存在するか判定
  # 存在していればtrueを返却
  def has_liked?(post)
    likes.exists?(post_id: post.id)
  end
end
