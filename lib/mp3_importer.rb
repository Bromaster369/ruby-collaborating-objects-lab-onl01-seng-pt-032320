class MP3Importer
  
  attr_reader :path 
  
  def initialize(path)
    @path = path 
    
  end
  
  def files 
    @files ||= Dir.glob("#{path}/*.mp3").collect{ |file| file.gsub("#{path}/", "") }
  end
  
  def import 
    files.each {|song| Song.new_by_file_name(song)}
  end
  
end