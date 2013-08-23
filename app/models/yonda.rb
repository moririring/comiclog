class Yonda < ActiveRecord::Base
  belongs_to :comic
  attr_accessible :comment, :user
end
