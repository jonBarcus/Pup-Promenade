# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string(255)
#  phone           :string(255)
#  password_digest :string(255)
#  image_url       :string(255)
#  admin           :boolean          default(FALSE)
#  bio             :text
#  created_at      :datetime
#  updated_at      :datetime
#  first_name      :string(255)
#  last_name       :string(255)
#  type            :string(255)
#

class User < ActiveRecord::Base

  # this is for bycrpt.  Account creation does not work
  # without it.
  has_secure_password

  # belongs_to :neighborhoods

  # TODO Figure out User stuff
  # Using a boolean to set WALKER/OWNER we need
  # to figure out our relationships with dogs
  # and neighborhoods

  has_many :dogs
  has_many :recommendations

end
