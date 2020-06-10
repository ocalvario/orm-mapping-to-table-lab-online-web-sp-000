class Student

   attr_accessor :name, :grade
   attr_reader :id
 
  def initialize(name, grade, id=nil)
    @id = id
    @name = name
    @grade = grade
  end
  
    def save
    sql = <<-SQL
      INSERT INTO songs (name, album) 
      VALUES (?, ?)
    SQL
 
    DB[:conn].execute(sql, self.name, self.album)
 
  end
 
end 
  
