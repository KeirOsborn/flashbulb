class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.time :start_time
      t.time :end_time
      t.string :name

      t.timestamps
    end
  end
end
