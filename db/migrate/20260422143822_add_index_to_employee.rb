class AddIndexToEmployee < ActiveRecord::Migration[8.1]
  def change
    add_index :employees, :job_title
    add_index :employees, :country
  end
end
