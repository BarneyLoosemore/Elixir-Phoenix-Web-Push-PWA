defmodule ChatPwaWeb.Endpoint do
  use Phoenix.Endpoint, otp_app: :chat_pwa

  if code_reloading? do
    socket "/phoenix/live_reload/socket", Phoenix.LiveReloader.Socket
    plug Phoenix.LiveReloader
    plug Phoenix.CodeReloader
  end

  plug ChatPwaWeb.Router
end
