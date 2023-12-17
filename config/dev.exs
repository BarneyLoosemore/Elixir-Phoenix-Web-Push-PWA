import Config

config :chat_pwa, ChatPwaWeb.Endpoint,
  http: [port: 4000],
  debug_errors: true,
  code_reloader: true

config :chat_pwa, ChatPwaWeb.Endpoint,
  live_reload: [
    patterns: [
      ~r"lib/chat_pwa_web/(controllers|live|components)/.*(ex|heex)$"
    ]
  ]
