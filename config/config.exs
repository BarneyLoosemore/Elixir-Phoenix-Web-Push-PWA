import Config

config :phoenix, :json_library, Jason
config :chat_pwa, ChatPwa.Endpoint, []

import_config "#{Mix.env()}.exs"
