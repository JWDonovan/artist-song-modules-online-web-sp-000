require 'pry'

class Artist
  extend Memorable
  extend Findable

  #dup
  attr_accessor :name
  attr_reader :songs

  #dup
  @@artists = []

  def initialize
    #dup
    @@artists << self
    @songs = []
  end

  # dup
  # def self.find_by_name(name)
  #   @@artists.detect{|a| a.name == name}
  # end

  # dup
  def self.all
    @@artists
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

  # dup
  def to_param
    name.downcase.gsub(' ', '-')
  end
end
