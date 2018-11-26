class CreateDiscussions < ActiveRecord::Migration[5.2]
  def change
    create_table :discussions do |t|
      t.references :college, foreign_key: true
      t.references :user, foreign_key: true
      t.references :interest, foreign_key: true
      t.text :title
      t.text :body

      t.timestamps
    end
  end
end
