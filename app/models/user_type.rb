# == Schema Information
#
# Table name: user_types
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class UserType < ActiveRecord::Base
  belongs_to :user

end
