class AddLikeCountDefaultValueToHeroes < ActiveRecord::Migration
  def change
  	change_column(:heroes, :like_count, :integer, :default => 0)
  end
end
