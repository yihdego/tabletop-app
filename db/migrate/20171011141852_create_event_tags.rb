class CreateEventTags < ActiveRecord::Migration
  def change
    create_table :event_tags do |t|
      t.belongs_to :event
      t.belongs_to :tag

      t.timestamps
    end
  end
end
