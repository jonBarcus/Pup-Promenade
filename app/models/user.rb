class User < ActiveRecord::Base

  belongs_to :neighborhoods

  # TODO Figure out User stuff
  # Using a boolean to set WALKER/OWNER we need
  # to figure out our relationships with dogs
  # and neighborhoods

  has_many :dogs
  has_many :recommendations

end
