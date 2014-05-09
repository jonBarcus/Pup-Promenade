class Neighborhood < ActiveRecord::Base
  belongs_to :boro

  has_many :users

end
