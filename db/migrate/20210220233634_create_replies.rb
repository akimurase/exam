class CreateReplies < ActiveRecord::Migration[6.1]
  def change
    create_table :replies do |t|
      t.text :text
      t.references :comment_id
      t.references :user_id
      t.references :admin_id

      t.timestamps
    end
  end
end
