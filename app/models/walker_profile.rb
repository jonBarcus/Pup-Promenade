# == Schema Information
#
# Table name: walker_profiles
#
#  id                :integer          not null, primary key
#  neighborhood_id   :integer
#  dog_id            :integer
#  skill_id          :integer
#  recommendation_id :integer
#  walker_id         :integer
#  created_at        :datetime
#  updated_at        :datetime
#

class WalkerProfile < ActiveRecord::Base
  belongs_to :walker
end
