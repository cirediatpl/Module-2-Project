class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.string :name
      t.string :biography
      t.string :discord_url
      t.string :facebook_group_url
      t.references :quiz, foreign_key: true

      t.timestamps
    end
  end
end
