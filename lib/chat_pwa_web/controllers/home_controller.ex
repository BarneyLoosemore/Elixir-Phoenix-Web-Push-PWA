defmodule ChatPwa.HomeController do
  use Phoenix.Controller, namespace: ChatPwa

  def index(conn, _opts) do
    IO.puts("hello world")

    Phoenix.Controller.html(conn, """
    hello world@!@!!!
    """)
  end
end
