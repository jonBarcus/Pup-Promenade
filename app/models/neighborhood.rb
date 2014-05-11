# == Schema Information
#
# Table name: neighborhoods
#
#  id         :integer          not null, primary key
#  boro_id    :integer
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Neighborhood < ActiveRecord::Base
  belongs_to :boro

  has_many :users

end
