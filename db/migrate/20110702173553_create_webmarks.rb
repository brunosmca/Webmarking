class CreateWebmarks < ActiveRecord::Migration
  def self.up
    create_table :webmarks do |t|
      t.string :link
      t.string :category
      t.string :title
      t.string :description
      t.boolean :public
      t.integer :user_id
      t.timestamps
    end
  end

  def self.down
    drop_table :webmarks
  end
end
