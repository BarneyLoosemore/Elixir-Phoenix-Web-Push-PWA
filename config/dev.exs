import Config

config :chat_pwa, ChatPwa.Endpoint,
  http: [port: 4000],
  debug_errors: true,
  code_reloader: true

config :chat_pwa, ChatPwa.Endpoint,
  live_reload: [
    patterns: [
      ~r"lib/chat_pwa_web/(controllers|live|components)/.*(ex|heex)$"
    ]
  ]
