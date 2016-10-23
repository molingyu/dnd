class CreateDndLogs < ActiveRecord::Migration[5.0]
  def change
    create_table :dnd_logs do |t|
      t.string :title
      t.date :date
      t.text :text

      t.timestamps
    end
  end
end
