class PagesController < ApplicationController
  def square
    render ({ :template => "calc_templates/square"})
  end

  def square_results
    @number = params.fetch("number").to_f
    render ({ :template => "calc_templates/square_results"})
  end
end
