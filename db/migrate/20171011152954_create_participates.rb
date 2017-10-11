class CreateParticipates < ActiveRecord::Migration
  def change
    create_table :participates do |t|
      t.belongs_to :user
      t.belongs_to :event

      t.timestamps
    end
  end
end
