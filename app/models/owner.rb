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

class Owner < User
  has_secure_password
  has_one :owner_profile
  accepts_nested_attributes_for :owner_profile

  # belongs_to :neighborhood, through: :boro
  belongs_to :boro
  has_one :neighborhood, through: :boro
end
