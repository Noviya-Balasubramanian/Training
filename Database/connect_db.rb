require 'active_record'
def connect_db!  
    ActiveRecord::Base.establish_connection(    
        host: 'localhost',     
        adapter: 'postgresql',    
        database: 'test',     
        user: 'postgres',     
        password: 'postgre123'  
    )
end