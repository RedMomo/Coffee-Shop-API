class ApplicationController < ActionController::API
    # before_action :authorized
    # @@secret_key = "#{ENV["SECRET_KEY"]}"
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
    rescue_from ActiveRecord::RecordInvalid, with: :record_invalid

    def encode_token(payload)
      JWT.encode(payload, 'secretkey123') 
    end

    def decoded_token
        header = request.headers['Authorization']
        if header
            token = header.split(" ")[1]
            begin
                JWT.decode(token, "secretkey123")
            rescue JWT::DecodeError
                nil
            end
        end
    end

    # takes the user id from the decoded token and find the user using the same user id
    def current_user 
      if decoded_token
          user_id =  decoded_token[0]["user_id"]
          admin = decoded_token[0]["user_type"]
          user = User.find_by(id: user_id)
      end
    end
  
    # checks if we have a current_user that is logged in
    # def authorized
    #     unless !!current_user
    #     render json: { message: 'Please log in' }, status: :unauthorized
    #     end
    # end

    

    private 
    def record_not_found
        render json: {"error": "Record not found"}, status: :not_found
    end

    def record_invalid(invalid)
      render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end
end
