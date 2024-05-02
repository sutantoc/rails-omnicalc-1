class PagesController < ApplicationController
  def square
    render ({ :template => "calc_templates/square"})
  end

  def square_results
    @number = params.fetch("number").to_f
    render ({ :template => "calc_templates/square_results"})
  end

  def square_root
    render ({ :template => "calc_templates/square_root"})
  end

  def square_root_results
    @user_number = params.fetch("user_number").to_f
    render ({ :template => "calc_templates/square_root_results"})
  end
end
