defmodule ChatPwa.Router do
  use ChatPwa, :router

  get("/", ChatPwa.HomeController, :index)
end
