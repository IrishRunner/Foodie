class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :firstName
      t.string :lastName
      t.string :address1
      t.string :address2
      t.string :town
      t.string :eircode
      t.string :email

      t.timestamps
    end
  end
end
