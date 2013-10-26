class Hero < ActiveRecord::Base
  belongs_to :campaign
  has_many :stories
end
