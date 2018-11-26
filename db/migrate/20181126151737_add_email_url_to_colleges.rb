class AddEmailUrlToColleges < ActiveRecord::Migration[5.2]
  def change
    add_column :colleges, :email_url, :string
  end
end
