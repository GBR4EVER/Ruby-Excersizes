
class Todo
  attr_reader :id, :name, :task, :priority
  
  def init(id, name, task, priority)
    @id = id
    @name = name
    @task = task
    @priority = priority
  end
  
  def self.all
    # will connect to our ToDo database.
    # and will return all our results as a hash.
    db = SQLite3::Database.new "ToDo.db"
    db.results_as_hash = true
    
    # selects all columns within our users table
    all_todos_from_db = db.execute("SELECT * FROM users")
    
    # sets all our data within our hash into a array.
    all_todos_as_user_objects = []
    
    all_todos_from_db.each do |t_db|
      id = t_db["id"]
      name = t_db["name"]
      task = t_db["task"]
      priority = t_db["priority"]
      
      # pushes our values from our hashed database into our new object Todo class.
      all_todos_as_user_objects << self.new(id, name, task, priority)
    end
    all_todos_as_user_objects
  end

  def priority_rating
    if @priority >= 5
      true
    else
      false
    end
  end
end

    