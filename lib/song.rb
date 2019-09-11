class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end


  def save
    self.class.all << self
  end
  
  def create
    song = self.new
  end 
    
  def new_by_name(name)
    song = self.new 
    song.name = name 
    song
  end
    
  def create_by_name(name)
    song = self.new
    song.name = name
    @all << song 
  end 
  
  def find_by_name(name)
    @all.find{|x| x.name == name}
  end 

end
