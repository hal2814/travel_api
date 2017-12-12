class UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    if @user.save!
      render status: 201, json: { your_id: 'destination id is: '+ @user.id.to_s,
                                  name: @user.name,
                                  key: @user.key,
                                  message: "User created succesfully. Your API key is " + @user.key
      }
    end
  end

private

  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def user_params
    params.permit(:name)
  end
end
