use Mix.Config

config :phoenix, Devcon.Router,
  port: System.get_env("PORT") || 4001,
  ssl: false,
  cookies: true,
  session_key: "_devcon_key",
  session_secret: "%HSX91RH@F(()XU*QRS@YC9^)V_SQQ%)5Q=1G=CB9D(CVVSO)(Z)QTZF7+)6SE@=34^OD7LV1FL*Y9(!R"

config :phoenix, :code_reloader,
  enabled: true

config :logger, :console,
  level: :debug


