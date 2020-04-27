class MP3Importer
  
  attr_accessor :path 
  
  def initialize(path)
    @path = path 
    
  end
  
  def self.files 
    @files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
  end
  
  def self.import 
    files.each {|song| Song.new_by_file_name(song)}
  end
  
end