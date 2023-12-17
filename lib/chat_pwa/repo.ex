defmodule ChatPwa.Repo do
  use Ecto.Repo,
    otp_app: :chat_pwa,
    adapter: Ecto.Adapters.Postgres
end
