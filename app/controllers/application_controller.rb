class ApplicationController < ActionController::API
rescue_from ActiveRecord::RecordNotFound, with: :not_found
rescue_from ActiveRecord::RecordInvalid, with: :unprocessable

private

    def not_found(exception)
        render json: {error: "#{exception.model} not found"}, status: :not_found
    end

    def unprocessable(invalid)
        render json: {error: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end

end
