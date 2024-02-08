class CreateFlashCards < ActiveRecord::Migration[7.1]
  def change
    create_table :flash_cards do |t|
      t.references :flash_card_set, null: false, foreign_key: true
      t.text :front
      t.text :back
      t.boolean :hidden

      t.timestamps
    end
  end
end
