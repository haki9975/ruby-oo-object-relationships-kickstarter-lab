require 'pry'
class Backer
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
      backed_projects =  ProjectBacker.all.find_all { |projects| projects.backer == self}
      backed_projects.collect {|proj| proj.project }
    end

end