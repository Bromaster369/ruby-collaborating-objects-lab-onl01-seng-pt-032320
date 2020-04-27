class MP3Importer
  
  attr_accessor :path 
  
  def initialize(path)
    @path = path 
    
  end
  
  def self.files 
    Dir[@path+"/*.mp3"].map { |file| file.split("/").last 
  end
  
  def self.import 
    files.each {|song| Song.new_by_file_name(song)}
  end
  
end