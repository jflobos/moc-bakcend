class ApiResponder < ActionController::Responder
  def respond
    return display_errors if has_errors?
    return head :no_content if delete?

    display resource, status: status_code
  end

  private

  def display(resource, given_options = {})
    serializer = create_serializer(resource)
    controller.render options.merge(given_options).merge(
      json: serializer.as_json
    )
  end

  def create_serializer(resource)
    serializer_class = options.delete(:serializer) || begin
      ActiveModel::Serializer.serializer_for(resource)
    end

    if serializer_class.present?
      serializer_class.new(resource, options)
    else
      resource
    end
  end

  def status_code
    if post?
      :created
    else
      :ok
    end
  end

  def display_errors
    controller.render(
      :status => :unprocessable_entity,
      :json => { message: "invalid_attributes", errors: format_errors }
    )
  end

  def format_errors
    resource.errors.as_json
  end
end