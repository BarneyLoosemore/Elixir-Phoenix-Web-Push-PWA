import Config

config :chat_pwa, ChatPwa.Repo,
  username: "postgres",
  password: "postgres",
  database: "chat_pwa_dev",
  hostname: "localhost",
  show_sensitive_data_on_connection_error: true,
  pool_size: 10

config :chat_pwa, ChatPwaWeb.Endpoint,
  http: [port: 4000],
  debug_errors: true,
  code_reloader: true

# Live reload
config :chat_pwa, ChatPwaWeb.Endpoint,
  live_reload: [
    patterns: [
      ~r"lib/chat_pwa_web/(controllers|live|components)/.*(ex|heex)$"
    ]
  ]
