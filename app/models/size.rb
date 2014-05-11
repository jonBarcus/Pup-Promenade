# == Schema Information
#
# Table name: sizes
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Size < ActiveRecord::Base
  belongs_to :dog

end
