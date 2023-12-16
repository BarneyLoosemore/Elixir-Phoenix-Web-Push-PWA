defmodule ChatPwa.Endpoint do
  use Phoenix.Endpoint, otp_app: :chat_pwa

  plug(ChatPwa.Router)
end
