class DogsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs do |t|
      t.column :shelter_id, :integer
      t.column :dog, :string
      t.column :dog_breed, :string
    end
  end
end
