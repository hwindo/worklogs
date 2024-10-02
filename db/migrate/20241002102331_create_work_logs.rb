class CreateWorkLogs < ActiveRecord::Migration[7.2]
  def change
    create_table :work_logs do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
