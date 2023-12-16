defmodule ChatPwa.HomeController do
  use Phoenix.Controller, namespace: ChatPwa

  def index(conn, _opts) do
    Phoenix.Controller.html(conn, """
    hello
    """)
  end
end
