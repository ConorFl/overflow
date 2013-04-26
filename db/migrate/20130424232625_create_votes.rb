class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :number , :default =>0,:null=> false
      t.integer :voteable_id
      t.string :voteable_type
      t.references :user
      t.timestamps
    end
  end
end
