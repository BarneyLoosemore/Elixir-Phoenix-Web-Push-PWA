defmodule ChatPwaWeb.Router do
  use ChatPwaWeb, :router

  get "/", ChatPwaWeb.HomeController, :index
end
