# == Schema Information
#
# Table name: owner_profiles
#
#  id              :integer          not null, primary key
#  neighborhood_id :integer
#  dog_id          :integer
#  owner_id        :integer
#  created_at      :datetime
#  updated_at      :datetime
#

class OwnerProfile < ActiveRecord::Base
  belongs_to :owner
end
