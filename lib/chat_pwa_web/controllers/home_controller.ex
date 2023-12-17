defmodule ChatPwaWeb.HomeController do
  use Phoenix.Controller, namespace: ChatPwaWeb

  def index(conn, _opts) do
    IO.puts("hello world")

    Phoenix.Controller.html(conn, """
    hello world@!@!!!
    """)
  end
end
