require 'active_record'

def conect_db!
  ActiveRecord::Base.establish_connection(
    host: 'localhost',
    adapter: 'postgresql',
    database: 'wd201_db', ##
    user: 'postgres',
    password: 'hey_add_your_own', ##
  )
end
