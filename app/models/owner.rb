class Owner < User
  has_one :owner_profile
  accepts_nested_attributes_for :owner_profile
end
