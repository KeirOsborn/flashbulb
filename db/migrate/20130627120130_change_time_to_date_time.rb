class ChangeTimeToDateTime < ActiveRecord::Migration
  change_table :pages do |t|
  	t.remove :start_time, :end_time
  	t.datetime :start_time
  	t.datetime :end_time 
  end
end
