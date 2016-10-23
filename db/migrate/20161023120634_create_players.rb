class CreatePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
      t.string :u_name
      t.string :u_code

      t.timestamps
    end
  end
end
