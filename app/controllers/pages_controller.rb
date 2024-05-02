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

  def payment
    render ({ :template => "calc_templates/payment"})
  end

  def payment_results
    @user_APR = params.fetch("user_APR").to_f
    @user_years = params.fetch("user_years").to_i
    @user_pv = params.fetch("user_pv").to_f

    @r = @user_APR / 1200
    @numerator = @r * @user_pv
    @neg_periods = @user_years * -12
    @r_plus1 = @r + 1
    @power_n = @r_plus1 ** @neg_periods
    @denominator = 1 - @power_n
    @payment = @numerator / @denominator
    
    render ({ :template => "calc_templates/payment_results"})
  end
end
