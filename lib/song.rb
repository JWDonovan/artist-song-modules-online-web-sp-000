require 'pry'

class Song
  extend Memorable

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
  def self.find_by_name(name)
    @@songs.detect{|a| a.name == name}
  end

  # dup
  def self.all
    @@songs
  end

  # dup
  def self.reset_all
    self.all.clear
  end

  # dup
  def self.count
    self.all.count
  end

  def artist=(artist)
    @artist = artist
  end

  # dup
  def to_param
    name.downcase.gsub(' ', '-')
  end
end
