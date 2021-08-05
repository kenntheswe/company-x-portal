class RecognitionsController < ApplicationController

  def new
    @recognition = Recognition.new
  end
  
  def create
    @recognition = Recognition.new(recognition_params)
    @recognition.save
    redirect_to users_path
  end
  
  private

  def recognition_params
    params.require(:recognition).permit(:name, :value, :message)
  end

end
