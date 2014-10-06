use Mix.Config

# NOTE: To get SSL working, you will need to set:
#
#     ssl: true,
#     keyfile: System.get_env("SOME_APP_SSL_KEY_PATH"),
#     certfile: System.get_env("SOME_APP_SSL_CERT_PATH"),
#
# Where those two env variables point to a file on disk
# for the key and cert

config :phoenix, Devcon.Router,
  port: System.get_env("PORT"),
  ssl: false,
  host: "example.com",
  cookies: true,
  session_key: "_devcon_key",
  session_secret: "%HSX91RH@F(()XU*QRS@YC9^)V_SQQ%)5Q=1G=CB9D(CVVSO)(Z)QTZF7+)6SE@=34^OD7LV1FL*Y9(!R"

config :logger, :console,
  level: :info,
  metadata: [:request_id]

