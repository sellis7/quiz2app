class CreateUserCostumes < ActiveRecord::Migration
  def change
    create_table :user_costumes do |t|
      t.text :costume
      t.integer :year

      t.timestamps null: false
    end
  end
end
