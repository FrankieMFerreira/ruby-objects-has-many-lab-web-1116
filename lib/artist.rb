class Artist

  attr_accessor :name, :songs, :song

 @@song_count = 1

  def initialize(name)
    @name = name
    @songs = []
  end


  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_song_by_name(name)
    newsong = Song.new(name)
    self.add_song(newsong)
    @@song_count += 1
  end


  def self.song_count
    @@song_count
  end


end
