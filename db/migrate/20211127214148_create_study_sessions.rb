class CreateStudySessions < ActiveRecord::Migration[6.1]
  def change
    create_table :study_sessions do |t|
      t.time :duration

      t.string :topic_id
      t.timestamps
    end
    add_foreign_key :study_sessions, :topics, column: :topic_id
    add_index(:study_sessions, :topic_id)
  end
end
