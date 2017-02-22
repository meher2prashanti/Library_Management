class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.column :name, :string

      t.timestamps null: false
    end



  end

  def self.down
    drop_table :subjects
  end
end


