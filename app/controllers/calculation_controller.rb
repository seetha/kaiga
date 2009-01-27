class CalculationController < ApplicationController
  def show
	@sample = subscription_calculations
  end

end
