class CreateUserinterests < ActiveRecord::Migration[5.2]
  def change
    create_table :userinterests do |t|
      t.references :user, foreign_key: true
      t.references :interest, foreign_key: true

      t.timestamps
    end
  end
end
