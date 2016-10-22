class Present < ActiveRecord::Base
  belongs_to :manitto
  has_many :comments
end
