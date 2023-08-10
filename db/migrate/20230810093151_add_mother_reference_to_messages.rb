class AddMotherReferenceToMessages < ActiveRecord::Migration[7.0]
  def change
    add_reference :messages, :mother, null: false, foreign_key: true
  end
end
