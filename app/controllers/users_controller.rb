class UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    @user.generate_key
    if @user.save!
      render status: 201, json: { your_id: 'destination id is: '+ @user.id.to_s,
                                  name: @user.name,
                                  key: @user.key,
                                  message: "User created successfully. Your API key is " + @user.key
      }
    end
  end

private

  def user_params
    params.permit(:name)
  end
end
