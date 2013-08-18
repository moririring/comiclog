class Yonda < ActiveRecord::Base
  belongs_to :comics
  attr_accessible :comment, :user
end
