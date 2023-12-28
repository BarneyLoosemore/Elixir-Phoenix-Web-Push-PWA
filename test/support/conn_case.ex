defmodule ChatPwaWeb.ConnCase do
  use ExUnit.CaseTemplate

  using do
    quote do
      @endpoint ChatPwaWeb.Endpoint

      use ChatPwaWeb, :verified_routes

      import Plug.Conn
      import Phoenix.ConnTest
      import ChatPwaWeb.ConnCase
    end
  end

  setup tags do
    ChatPwa.DataCase.setup_sandbox(tags)
    {:ok, conn: Phoenix.ConnTest.build_conn()}
  end
end
