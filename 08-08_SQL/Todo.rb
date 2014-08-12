require "pry"
require "sqlite3"



class Todo
  attr_reader :id, :name, :task, :priority
  
  def self.all
    db = SQLite3::Database.new "ToDo.db"
    db.results_as_hash = true
    
    binding.pry
    all_users_from_db = db.execute("SELECT * FROM users")
    
    all_users_as_user_objects = []
    
    all_users_from_db.each do |u_db|
      id = u_db["id"]
      name = u_db["name"]
      task = u_db["task"]
      priority = u_db["priority"]
      
      all_users_as_user_objects << self.new(id, name, task, priority)
    end
    all_users_as_user_objects
    
    binding.pry
  end
  
  def init(id, name, task, priority)
    @id = id
    @name = name
    @task = task
    @priority = priority
  end
  
end

binding.pry
#   def priority_rating
#     if @priority >= 5
#       true
#     else
#       false
#     end
#   end
# end
    
    