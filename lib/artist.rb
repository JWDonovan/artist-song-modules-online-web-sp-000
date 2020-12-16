require 'pry'

class Artist
  extend Memorable
  extend Findable
  include Paramable

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
end
