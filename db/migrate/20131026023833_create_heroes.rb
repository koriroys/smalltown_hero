class CreateHeroes < ActiveRecord::Migration
  def change
    create_table :heroes do |t|
      t.string :name
      t.integer :campaign_id
      t.integer :like_count

      t.timestamps
    end
  end
end
