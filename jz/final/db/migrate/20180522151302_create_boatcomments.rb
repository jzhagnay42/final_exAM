class CreateBoatcomments < ActiveRecord::Migration[5.1]
  def change
    create_table :boatcomments do |t|
      t.string :name
      t.string :comment

      t.timestamps
    end
  end
end
