class FormController < ApplicationController
  def fillform
    @formdata = Form.all
  end

  def new
    @userdata = Form.new
  end

  def create
    @userdata = Form.new(userdata_params)

    if @userdata.save
      redirect_to @userdata
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @userdata = Form.find(params[:id])
  end

  def update
    @userdata = Form.find(params[:id])

    if @userdata.update(userdata_params)
      redirect_to @userdata
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private
    def userdata_params
      params.require(:userdata).permit(:firstname, :lastname, :email, :username, :phonenumber, :zipcode, :password, :planstartdate, :planenddate)
    end
end
