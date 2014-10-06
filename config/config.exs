# This file is responsible for configuring your application
use Mix.Config

# Note this file is loaded before any dependency and is restricted
# to this project. If another project depends on this project, this
# file won't be loaded nor affect the parent project.

config :phoenix, Devcon.Router,
  port: System.get_env("PORT"),
  ssl: false,
  static_assets: true,
  cookies: true,
  session_key: "_devcon_key",
  session_secret: "%HSX91RH@F(()XU*QRS@YC9^)V_SQQ%)5Q=1G=CB9D(CVVSO)(Z)QTZF7+)6SE@=34^OD7LV1FL*Y9(!R",
  catch_errors: true,
  debug_errors: false,
  error_controller: Devcon.PageController

config :phoenix, :code_reloader,
  enabled: false

config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. Note, this must remain at the bottom of
# this file to properly merge your previous config entries.
import_config "#{Mix.env}.exs"
