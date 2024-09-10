class CreateMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :messages do |t|
      t.string :content
      t.references :user, null: false, foreign_key: true
      t.references :room, null: false, foreign_key: true
      t.timestamps
    end
  end
end

# | Column  | Type       | Options                        |
# | ------- | ---------- | ------------------------------ |
# | content | string     |                                |
# | user    | references | null: false, foreign_key: true |
# | room    | references | null: false, foreign_key: true |