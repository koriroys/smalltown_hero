class CreateCampaigns < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|
      t.string :city
      t.string :state
      t.datetime :start_date
      t.datetime :end_date
      t.text :description
      t.integer :prize_amount
      t.string :sponsoring_company

      t.timestamps
    end
  end
end
