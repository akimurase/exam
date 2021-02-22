class CreateReplies < ActiveRecord::Migration[6.1]
  def change
    create_table :replies do |t|
      t.text :text
      t.references :comment
      t.references :user
      # t.references :admin

      t.timestamps
    end
  end
end
