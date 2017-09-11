class CreateMavies < ActiveRecord::Migration[5.1]
  def change
    create_table :mavies do |t|
      t.string :name
      t.integer :released

      t.timestamps
    end
  end
end
