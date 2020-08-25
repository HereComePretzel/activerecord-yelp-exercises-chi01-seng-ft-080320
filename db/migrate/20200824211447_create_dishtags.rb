class CreateDishtags < ActiveRecord::Migration[5.2]
  def change
    create_table :dishtags do |t|
      t.references :dish 
      t.references :tag
    end 
  end
end
