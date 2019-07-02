class CreateReacts < ActiveRecord::Migration[5.2]
  def change
    create_table :reacts do |t|
      t.string :user_id
      t.string :post_id
      t.string :type
      t.string :completion

      t.timestamps
    end
  end
end
