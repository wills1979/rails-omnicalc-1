class CalculationController < ApplicationController

  def square_new

    render({ :template => "calculation_templates/square_new" })  

  end

  def square_results

    @number = params.fetch("number").to_f

    @result = @number**2
  
    render({ :template => "calculation_templates/square_results" })  

  end

  def square_root_new

    render({ :template => "calculation_templates/square_root_new" })  

  end

  def square_root_results

    @number = params.fetch("number").to_f

    @result = @number**0.5
  
    render({ :template => "calculation_templates/square_root_results" })  

  end

  def payment_new

    render({ :template => "calculation_templates/payment_new" })  

  end

  def payment_results

    @user_apr = params.fetch("user_apr").to_f / (100*12)
    @user_years = params.fetch("user_years").to_i
    user_months = @user_years * 12
    @user_pv = params.fetch("user_pv").to_f

    numerator = @user_apr * @user_pv
    denominator = 1 - (1 + @user_apr)**(-user_months)

    @user_payment = numerator / denominator
    @user_payment = @user_payment.round(2)
  
    render({ :template => "calculation_templates/payment_results" })  

  end

  def random_new

    render({ :template => "calculation_templates/random_new" })  

  end

  def random_results

    @user_min = params.fetch("user_min").to_f
    @user_max = params.fetch("user_max").to_f

    @random_number = rand(@user_min..@user_max)
  
    render({ :template => "calculation_templates/random_results" })  

  end

end
