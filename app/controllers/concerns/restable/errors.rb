module Restable::Errors
  extend ActiveSupport::Concern

  included do
    rescue_from ActiveRecord::RecordNotFound, with: :respond_with_not_found
    rescue_from ActiveRecord::RecordInvalid, with: :respond_with_validation_error

    private

    def render_error(status:, error:, details: nil)
      render status: status, json: {error: error, details: details}.compact_blank
    end

    def respond_with_not_found(exception)
      error = if exception.id
        "Couldn't find #{exception.model.downcase} with #{exception.primary_key} = #{exception.id}"
      else
        "Couldn't find #{exception.model.downcase}"
      end

      render_error(status: :not_found, error: error)
    end

    def respond_with_validation_error(exception)
      action = exception.record.new_record? ? :create : :update
      model = exception.record.class.name.underscore.humanize.downcase

      render_error(
        status: :unprocessable_entity,
        error: "Could not #{action} #{model}",
        details: exception.record.errors.full_messages.as_json
      )
    end
  end
end
