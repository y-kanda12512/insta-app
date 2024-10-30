# == Schema Information
#
# Table name: posts
#
#  id         :bigint           not null, primary key
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_posts_on_user_id  (user_id)
#

require 'time'

class Post < ApplicationRecord
    belongs_to :user
    has_many_attached :post_images

    def posting_hour(post_time)
        current_time = Time.now
        time_difference = ( current_time - post_time ) / 3600
        time_difference_i = time_difference.to_i
        "#{time_difference_i} hours ago"
    end
end
