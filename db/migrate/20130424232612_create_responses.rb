class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.string :content
      t.integer :respondable_id
      t.string :respondable_type
      t.references :user
      t.timestamps
    end
  end
end
