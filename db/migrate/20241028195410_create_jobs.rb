class CreateJobs < ActiveRecord::Migration[7.1]
  def change
    create_table :jobs do |t|
      t.date :last_update
      t.date :deadline
      t.string :status
      t.string :job_title
      t.string :company
      t.integer :salary
      t.string :location
      t.text :link
      t.text :extra_notes

      t.timestamps
    end
  end
end
