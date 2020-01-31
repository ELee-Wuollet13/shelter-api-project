class AddSheltersTable < ActiveRecord::Migration[5.2]
  def change
    create_table :shelters do |t|
      t.column :address, :string

    end
  end
end
