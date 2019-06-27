class AddUrlNameToUser < ActiveRecord::Migration[5.2]
  def change
    # TODO: null:false
    add_column :users, :url_name, :string, after: :email
    add_index :users, :url_name
  end
end
