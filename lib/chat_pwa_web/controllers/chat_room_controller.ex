defmodule ChatPwaWeb.ChatRoomController do
  use ChatPwaWeb, :controller

  def index(conn, _params) do
    chat_rooms = ChatPwa.Chat.all_rooms()

    render(conn, :index, chat_rooms: chat_rooms, layout: false)
  end
end
