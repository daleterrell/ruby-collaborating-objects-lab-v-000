require "pry"

class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def save
  	@@all << self
  end

  def add_song(song)
    @songs << song
  end

  def self.all
  	@@all
  end

  def self.find_or_create_by_name(name)
  	x = @@all.select {|artist| artist.name == name}
  	if x.size == 1
  		x.first
  	else
  		artist = self.new(name)
  		@@all << artist
  		artist
  	end
  	end

  def print_songs
    songs.each {|song| puts song.name}
  end
end
