class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.text :text
      t.references :user_id
      t.references :admin_id

      t.timestamps
    end
  end
end
