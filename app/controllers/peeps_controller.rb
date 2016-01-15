class PeepsController < ApplicationController
  def index
    @peeps = Peep.all
  end

  def new
    @peep = Peep.new
  end

  def create
    @peep = Peep.new(message_params)
    if @peep.save
      redirect_to '/peeps'
    else
      render 'new'
    end
  end

  private
  def message_params
    params.require(:peep).permit(:content)
  end
end
