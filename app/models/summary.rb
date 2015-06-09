# == Schema Information
#
# Table name: summaries
#
#  id         :integer          not null, primary key
#  post_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  content    :text
#

class Summary < ActiveRecord::Base
  belongs_to :posts
end
