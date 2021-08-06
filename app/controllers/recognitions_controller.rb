class RecognitionsController < ApplicationController
  skip_before_action :verify_authenticity_token

  # new recognition
  def new
    @recognition = Recognition.new
  end
  
  # create new recognition
  def create
    @recognition = Recognition.new(recognition_params)
    if @recognition.save
      redirect_to users_path, notice: "Recognition is sent to your coworker & his/ her manager."
    else 
      render :new
    end
  end
  
  private

  # parameter for creating new recognition
  def recognition_params
    params.require(:recognition).permit(:name, :value, :message)
  end

end
