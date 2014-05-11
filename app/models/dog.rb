# == Schema Information
#
# Table name: dogs
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  name        :string(255)
#  age         :integer
#  sex_id      :integer
#  breed_id    :integer
#  size_id     :integer
#  temperment  :string(255)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#

class Dog < ActiveRecord::Base
  belongs_to :user

  # TODO Figure out Dog Model relationships
  # ideally, a dog will belong to a WALKER through
  # an OWNER.  Having the WALKER/OWNER status
  # set by a boolean upon account creation, we will
  # have to set the relationship based on that
  # boolean value

  has_one :sex
  has_one :size
  has_one :breed


end
