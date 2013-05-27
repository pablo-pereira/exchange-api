class Dollar < ActiveRecord::Base
  attr_accessible :buyer, :seller, :dollar_type, :created_at, :updated_at, :id
end
