class Droptables < ActiveRecord::Migration[6.1]
  def change
    drop_table :taskes

  end
end
