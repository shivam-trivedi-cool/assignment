class CreateContactUs < ActiveRecord::Migration[6.1]
  def change
    create_table :contact_us do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_number
      t.string :message

      t.timestamps
    end
  end
end
