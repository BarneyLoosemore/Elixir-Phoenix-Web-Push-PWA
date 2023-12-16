defmodule ChatPwa.Router do
  use Phoenix.Router

  get("/", ChatPwa.HomeController, :index)
end
