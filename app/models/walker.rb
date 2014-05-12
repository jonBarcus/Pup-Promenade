class Walker < User
  has_one :walker_profile
  accepts_nested_attributes_for :walker_profile
end
