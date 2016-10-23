class CreateDndInfos < ActiveRecord::Migration[5.0]
  def change
    create_table :dnd_infos do |t|

      t.timestamps
    end
  end
end
