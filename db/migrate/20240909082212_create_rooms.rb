class CreateRooms < ActiveRecord::Migration[7.0]
  def change
    create_table :rooms do |t|
      t.string :name, null: false
      t.timestamps
    end
  end
end


## rooms テーブル

# | Column | Type   | Options     |
# | ------ | ------ | ----------- |
# | name   | string | null: false |