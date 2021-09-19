class CreateCitations < ActiveRecord::Migration[6.1]
  def change
    create_table :citations do |t|
      t.references :offender, null: false, foreign_key: true
      t.references :enforcer, null: false, foreign_key: true
      t.string :violation
      t.integer :amount
      t.string :due_date
      t.string :summons_date

      t.timestamps
    end
  end
end
