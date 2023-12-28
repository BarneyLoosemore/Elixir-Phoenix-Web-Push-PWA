defmodule ChatPwaWeb.Endpoint do
  use Phoenix.Endpoint, otp_app: :chat_pwa

  if Application.compile_env(:chat_pwa, :sql_sandbox) do
    plug Phoenix.Ecto.SQL.Sandbox
  end

  if code_reloading? do
    socket "/phoenix/live_reload/socket", Phoenix.LiveReloader.Socket
    plug Phoenix.LiveReloader
    plug Phoenix.CodeReloader
  end

  plug ChatPwaWeb.Router
end
