class ChatController < WebsocketRails::BaseController
  def initialize_session
    # perform application setup here
    controller_store[:message_count] = 0
  end
  def show
    new_message = {:message => message}
    send_message :test_event, new_message
    2
  end
end