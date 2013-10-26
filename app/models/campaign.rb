class Campaign < ActiveRecord::Base
	has_many :heroes
  has_many :pictures, as: :imageable
end
