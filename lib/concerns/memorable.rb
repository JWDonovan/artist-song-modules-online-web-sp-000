module Memorable
  module ClassMethods
    attr_accessor :name

    def reset_all
      all.clear
    end

    def count
      all.count
    end
  end

  module InstanceMethods
    def initialize
      self.class.all << self
    end
  end
end
