
class PanicChannel < ApplicationCable::Channel

  def subscribed
    stream_from "panic_#{params['admin_id']}_channel"
  end

  def unsubscribed
    admin_id = "#{params['admin_id']}"
    # Indexing admin_id unsubscribed to push notification if needed

  end

  def send_message data
    team_id = data["team_id"]
    ActionCable.server.broadcast "panic_#{params['admin_id']}_channel", {team_id: team_id}

  end

end