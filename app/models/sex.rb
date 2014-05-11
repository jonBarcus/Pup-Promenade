# == Schema Information
#
# Table name: sexes
#
#  id         :integer          not null, primary key
#  sex        :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Sex < ActiveRecord::Base
  belongs_to :dog

end
