class CreateChoices < ActiveRecord::Migration[8.0]
  def change
    create_table :choices do |t|
      t.string :content
      t.integer :score_visual
      t.integer :score_auditory
      t.references :question, null: false, foreign_key: true

      t.timestamps
    end
  end
end
