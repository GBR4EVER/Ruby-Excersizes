
class Todo
  attr_reader :id, :name, :task, :priority,
  
  def init(id, name, task, priority)
    @id = id
    @name = name
    @task = task
    @priority = priority
  end

  def self.all
    db = SQLite3::Database.new "ToDo.db"
    db.results_as_hash = true
    
    all_users_from_db = db.execute("SELECT * FROM users")
    
    all_users_from_db.each do |u_db|
      id = u_db[0]["id"]
      name = u_db[0]["name"]
      task = u_db[0]["task"]
      priority = u_db[0]["priority"]
      
      all_users_as_todo_objects << self.new(id, name, task, priority)
    end
    
    all_users_as_user_objects
  end
  
  def priority_rating
    if @priority >= 5
      true
    else
      false
    end
  end  
end
    
    

binding.pry