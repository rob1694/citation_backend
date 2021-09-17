class CreateOffenders < ActiveRecord::Migration[6.1]
  def change
    create_table :offenders do |t|
      t.string :name

      t.timestamps
    end
  end
end
