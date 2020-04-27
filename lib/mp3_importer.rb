class MP3Importer
  
  attr_accessor :path 
  
  def initialize(path)
    @path = path 
    
  end
  
  def self.files 
   
  end
  
  def self.import 
    files.each {|song| Song.new_by_file_name(song)}
  end
  
end