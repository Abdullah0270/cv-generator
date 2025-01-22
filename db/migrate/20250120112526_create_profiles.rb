class CreateProfiles < ActiveRecord::Migration[7.2]
  def change
    create_table :profiles do |t|
      t.string :name
      t.text :summary
      t.string :expertise
      t.text :experience
      t.text :about

      t.timestamps
    end
  end
end
