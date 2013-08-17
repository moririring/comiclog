class Comic < ActiveRecord::Base
  default_scope :order => 'sale DESC'
  paginates_per 5
  attr_accessible :content, :identification, :img, :link, :price, :publisher, :sale, :title, :turn, :writers
end
