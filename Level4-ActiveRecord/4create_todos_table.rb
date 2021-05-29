require './3connect_db.rb'
conect_db!

ActiveRecord::Migration.create_table(:todos) do |t|
  t.column :todo_text, :text
  t.column :due_date, :date
  t.column :completed, :bool
end

"
Any command that modifies the structure
of the database, like creating tables,
or adding and removing columns from an
existing table, are all called 'migrations'.
The word is used in the sense that we're
'migrating' the database from one state
to another new state.
"
