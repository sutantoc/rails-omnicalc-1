class PagesController < ApplicationController
  def square
    render ({ :template => "calc_templates/square"})
  end
end
