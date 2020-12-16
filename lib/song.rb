require 'pry'

class Song
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable
  include Paramable

  #dup
  attr_accessor :name
  attr_reader :artist

  #dup
  @@songs = []

  # dup
  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end
end
