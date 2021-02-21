require 'pry'

class Project
    attr_reader :title
    @@all = []

    def initialize(title)
        @title= title
        @@all << self
    end

    def self.all
        @@all
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
       # binding.pry
        proj = ProjectBacker.all.select {|a| a.project == self}
        proj.collect {|a| a.backer}
      
    end

end