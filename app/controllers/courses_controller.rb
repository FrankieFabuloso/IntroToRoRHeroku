class CoursesController < ApplicationController
  def index
    @search_term = params[:looking_for] || 'bulbasaur'
    @courses = Coursera.for(@search_term)
    @name = "#{@courses["name"][0].upcase}#{@courses["name"][1..@courses.length]}"
    @moves = @courses["moves"].select do |move|
      move["version_group_details"][0]["level_learned_at"].to_i > 0
    end
    @types = @courses["types"]
  end
end
