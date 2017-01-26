class CreateSurveys < ActiveRecord::Migration[5.0]
  def change
    create_table :surveys do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :services, array: true, default: []
      t.string :company

      t.timestamps
    end
  end
end
