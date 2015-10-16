class Route < ActiveRecord::Base
  #NOTE: Again, a join table is a better final solution for this.
	serialize :stations,Array
end
