class CreateEnforcers < ActiveRecord::Migration[6.1]
  def change
    create_table :enforcers do |t|
      t.string :name
      t.integer :badge_number

      t.timestamps
    end
  end
end
