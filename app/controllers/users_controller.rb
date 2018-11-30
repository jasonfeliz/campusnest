# frozen_string_literal: true

class UsersController < ProtectedController
  skip_before_action :authenticate, only: %i[signup signin index checkusername]
  def index
    render json: User.all
  end

  # POST '/sign-up'
  def signup
    user = User.create(user_creds)

    if user.valid?
      render json: user, status: :created
    else
      render json: user.errors, status: :bad_request
    end
  end

  # POST '/sign-in'
  def signin
    creds = user_creds
    if (user = User.authenticate creds[:email],creds[:password])

      render json: user, serializer: UserLoginSerializer, root: 'user'
    else
      head :unauthorized
    end
  end

  # DELETE '/sign-out'
  def signout
    current_user.logout
    head :no_content
  end

  # PATCH '/change-password/:id'
  def changepw
    # if the the old password authenticates,
    # the new one is not blank,
    # and the model saves
    # then 204
    # else 400
    if current_user.authenticate(pw_creds[:old]) &&
       !(current_user.password = pw_creds[:new]).blank? &&
       current_user.save
      head :no_content
    else
      head :bad_request
    end
  end

  # POST check if username exist
  def checkusername
    # get the username that the user submitted
    @username = username_validate[:submitted_username]
    # check the users table to see if the username exists
    # if username exist, send back response in string 'taken'
    @user = User.where(username: @username).take
    if @user
      render plain: 'taken'
    end
  end



  private

  def user_creds
    params.require(:credentials)
          .permit(:email, :password, :password_confirmation, :username, :college_id)
  end

  def pw_creds
    params.require(:passwords)
          .permit(:old, :new)
  end

  def username_validate
    params.require(:username).permit(:submitted_username)
  end
end
