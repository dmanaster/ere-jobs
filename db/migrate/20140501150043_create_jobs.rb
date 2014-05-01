class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.integer :company_id
      t.integer :user_id
      t.string :title
      t.string :description
      t.string :contact
      t.string :location

      t.timestamps
    end
  end
end
