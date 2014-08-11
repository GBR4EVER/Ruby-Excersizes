
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
    
    all_todos_from_db = db.execute("SELECT * FROM todos")
    
    all_todos_from_db.each do |t_db|
      id = t_db[0]["id"]
      home = t_db[0]["home"]
      work = t_db[0]["work"]
      estTime = t_db[0]["estTime"]
      
      all_todos_as_todo_objects << self.new(id, home, work, estTime)
    end
    
    all_todos_as_todo_objects
  end
  
  def how_long_may_take
    if @estTime >= 10
      true
    else
      false
    end
  end  
end
    
    

binding.pry