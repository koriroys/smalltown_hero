class Hero < ActiveRecord::Base
  belongs_to :campaign
  has_many :stories
  has_many :pictures, as: :imageable
end
