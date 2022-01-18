class CreateTopics < ActiveRecord::Migration[6.1]
  def change
    create_table :topics, id: :string do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
