require 'pry'

class Song
  extend Memorable
  extend Findable
  include Paramable

  #dup
  attr_accessor :name
  attr_reader :artist

  #dup
  @@songs = []

  def initialize
    #dup
    @@songs << self
  end

  # dup
  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end
end
