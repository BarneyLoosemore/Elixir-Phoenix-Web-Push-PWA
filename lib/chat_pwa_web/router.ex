defmodule ChatPwaWeb.Router do
  use ChatPwaWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
  end

  scope "/", ChatPwaWeb do
    pipe_through :browser

    get "/", ChatRoomController, :index
    resources "/chat_rooms", ChatRoomController, only: [:new]
  end
end
