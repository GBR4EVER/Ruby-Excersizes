
class Todo
  attr_reader :id, :home, :work, :estTime,
  
  def init(id, home, work, estTime)
    @id = id
    @home = home
    @work = work
    @estTime = estTime
  end

  def self.all
    db = SQLite3::Database.new "Todo.db"
    db.results_as_hash = true
    
    all_todos_from_db = db.execute(SELECT * FROM users)
    
    all_todos_from_db.each do |u_db|
      id = |u_db|["id"]
      home = |u_db|["home"]
      work = |u_db|["work"]
      estTime = |u_db|["estTime"]
      
      all_todos_as_todo_objects << self.new(id, home, work, estTime)
    end
    
    all_todos_as_todo_objects
  end
    
    
    

binding.pry