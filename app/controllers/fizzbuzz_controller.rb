class FizzbuzzController < ApplicationController

  def computate
    puts "Params == #{params[:value]}"
    # value = params[:value].to_i
    # if value < 0
    #   # render json: { errors: "negative value" }, status: 422
    #   json_response({ errors: "negative value" }, 422)
    # else
    #   # render json: {"ok"}, status: 200
    #   json_response(nil, :created)
    # end

    obj = {}
    obj["status"] = "ok"


    respond_to do |format|
      # format.html # show.html.erb
      format.json { render json: obj, status: 200 }
    end
  end
end
