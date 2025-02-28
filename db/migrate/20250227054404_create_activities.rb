class CreateActivities < ActiveRecord::Migration[8.0]
  def change
    create_table :activities do |t|
      t.belongs_to :project, null: false, foreign_key: true
      t.belongs_to :user, null: false, foreign_key: true
      t.string :type
      t.text :body
      t.string :old_status
      t.string :new_status

      t.timestamps
    end
  end
end
