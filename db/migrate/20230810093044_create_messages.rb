class CreateMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :messages do |t|
      t.text :content
      t.string :sender
      t.datetime :timestamp

      t.timestamps
    end
  end
end
