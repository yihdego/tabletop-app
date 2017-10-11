class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :location
      t.text :description
      t.datetime :time
      t.belongs_to :admin

      t.timestamps
    end
  end
end
