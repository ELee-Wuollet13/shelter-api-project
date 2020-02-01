class CatsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :cats do |t|
      t.column :shelter_id, :integer
      t.column :cat, :string
      t.column :cat_breed, :string
    end
  end
end
