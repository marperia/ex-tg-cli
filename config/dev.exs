use Mix.Config

config :logger, level: :debug

config :tg_client_2,
       event_handler: {
         TgClient.Event.Handler,
         size: 10,
         max_overflow: 0
       }
