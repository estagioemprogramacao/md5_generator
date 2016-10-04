class KeyPairsController < ApplicationController

  def index
    @key_pair = KeyPair.get_active || KeyPair.new
  end

  def create
    @key_pair = KeyPair.new(key_pair_params.merge(active: true))

    if @key_pair.save
      redirect_to :root
    else
      render :index
    end
  end

  def inactivate_all
    KeyPair.inactivate_all
    redirect_to :root
  end

  private

  def key_pair_params
    params.require(:key_pair).permit(:key)
  end

end
