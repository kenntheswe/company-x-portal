class RecognitionsController < ApplicationController

  def new
    @recognition = Recognition.new
  end
  
  def create
    @recognition = Recognition.new(recognition_params)
  end
  
  private

  def recognition_params
    params.require(:recognition).permit(:username, :value, :message)
  end

end
