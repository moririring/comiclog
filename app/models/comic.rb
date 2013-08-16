class Comic < ActiveRecord::Base
	default_scope :order => 'sale DESC'
	paginates_per 5
end
