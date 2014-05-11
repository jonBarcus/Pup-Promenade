# == Schema Information
#
# Table name: recommendations
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  body       :text
#  created_at :datetime
#  updated_at :datetime
#

class Recommendation < ActiveRecord::Base
  belongs_to :user

end
