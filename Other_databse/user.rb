# The User class is not CREATING new users, necessarily. For now, it's just a
# bridge from Ruby/Sinatra to the database.
#
# This means that when I want to create more users, I need to use the SQLite
# console (which you get by typing `sqlite3 facebook.db` in Terminal).
#
# On Monday, we'll improve this class so that we can actually create and update
# the "users" table without having to use the SQLite console.
class User
  attr_reader :id, :name, :age, :bio
  
  # Pretty standard initialize method. But where to the values come from? For now,
  # the values come from the User.all method (see the next method).
  def initialize(id, name, age, bio)
    @id = id
    @name = name
    @age = age
    @bio = bio
  end
  
  # A *class-method* (as opposed to *instance* method) that gets all of the users
  # from the "users" database table.
  #
  # Returns an Array of User objects.
  
  def self.all
    db = SQLite3::Database.new "facebook.db"
    db.results_as_hash = true
    
    # Gets an Array of Hashes - one Hash per table row.
    all_users_from_db = db.execute("SELECT * FROM users")
    
    # We will create a User object using the info in each Hash and then collect the
    # User objects in this Array.
    all_users_as_user_objects = []
    
    all_users_from_db.each do |u_db|
      # `u_db` is a Hash with the info from that row.
      id = u_db["id"]
      name = u_db["name"]
      age = u_db["age"]
      bio = u_db["bio"]
      all_users_as_user_objects << self.new(id, name, age, bio)
    end
    all_users_as_user_objects
  end
  # Returns an Array of Post objects for this individual User.
  def posts
    # TODO - We'll get to this on Monday.
  end
  # Returns Boolean for user's ability to drink (in USA).
  def can_drink_alcohol?
    if @age >= 21
      true
    else
      false
    end
  end
end

