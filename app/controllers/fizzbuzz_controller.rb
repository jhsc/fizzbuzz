class FizzbuzzController < ApplicationController
  include Fizzbuzzable

  def computate
    puts "Params == #{params[:value]}"
    ret = {}
    status = 404
    value = params[:value].to_s

    # Check for valid integer
    # Use regex to test
    if value.match? /\A\d+\z/
      ret["resp"] = Fizzbuzzness(value.to_i)
      status = 200
    else
      ret["resp"] = "Not a valid integer"
    end

    respond_to do |format|
      format.json { render json: ret, status: status }
    end
  end

end
