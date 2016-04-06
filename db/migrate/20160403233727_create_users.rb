class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, limit: 255
      t.string :nome, limit: 60
      t.integer :faixaEtarea
      t.boolean :sexo
      t.string :senha, limit: 8
      t.boolean :promocao

      t.timestamps null: false
    end
  end
end
