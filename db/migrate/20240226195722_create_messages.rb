class CreateMessages < ActiveRecord::Migration[7.1]
  def change
    create_table :messages do |t|
      t.text :text
      t.references :user
      t.timestamps
    end
  end
end
