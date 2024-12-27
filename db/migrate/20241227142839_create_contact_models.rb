class CreateContactModels < ActiveRecord::Migration[8.0]
  def change
    create_table :contact_models do |t|
      t.string :name
      t.string :email
      t.text :message

      t.timestamps
    end
  end
end
