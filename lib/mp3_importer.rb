class MP3Importer
<<<<<<< HEAD
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files 
    Dir.entries(@path).select{|file| file[-4] == '.'}
  end
  
  def import
    files.select{|file| file[-4] == '.'}.each{|file| Song.new_by_filename(file)}
=======
  attr_accessor :path, :files_in_folder
  
  def initialize(path)
    import(files(path))
  end
  
  def files(path)
    @files_in_folder = Dir.entires(path).select{|file| file[-4] == '.'}
  end
  
  def import(files)
    @files_in_folder.each{|file| Song.new(file)}
>>>>>>> c1f6594a98ac249665c9422d8134b83193c6818d
  end
end