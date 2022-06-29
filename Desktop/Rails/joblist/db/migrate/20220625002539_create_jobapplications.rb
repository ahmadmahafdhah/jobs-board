class CreateJobapplications < ActiveRecord::Migration[7.0]
  def change
    create_table :jobapplications do |t|
      t.string :title
      t.string :status, default: 'Not Seen'

      t.timestamps
    end
  end
end
