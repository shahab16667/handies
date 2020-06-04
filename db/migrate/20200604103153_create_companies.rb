class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :abn
      t.string :description
      t.references :owner, references: :users, foreign_key: {to_table: :users}

      t.timestamps
    end
  end
end
