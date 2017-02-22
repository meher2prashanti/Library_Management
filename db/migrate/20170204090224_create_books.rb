class CreateBooks < ActiveRecord::Migration
  def change
    create_table :book do |t|
      t.column :title, :string, :limit => 32, :null => false
      t.column :price, :float
      t.column :subject_id, :integer
      t.column :description, :text
      t.column :created_at, :timestamp
      t.timestamps null: false
    end
  end

  def self.down
    drop_table :book
  end
end