class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.text :explain,null: false,length: {maximum: 300}
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
