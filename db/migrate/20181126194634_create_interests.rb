class CreateInterests < ActiveRecord::Migration[5.2]
  def change
    create_table :interests do |t|
      t.string :interest_name

      t.timestamps
    end
  end
end
