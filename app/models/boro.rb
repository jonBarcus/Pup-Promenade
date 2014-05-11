# == Schema Information
#
# Table name: boros
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Boro < ActiveRecord::Base
  has_many :neighborhoods

end
