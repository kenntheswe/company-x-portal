class RecognitionsController < ApplicationController
  skip_before_action :verify_authenticity_token

  # new recognition
  def new
    @recognition = Recognition.new
  end
  
  # create new recognition
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
