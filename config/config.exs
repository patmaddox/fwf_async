use Mix.Config

config :fwf_async, FwfAsync.Repo,
  database: "fwf_async",
  username: "postgres",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

config :fwf_async, :ecto_repos, [FwfAsync.Repo]

config :fun_with_flags, :persistence,
  adapter: FunWithFlags.Store.Persistent.Ecto,
  repo: FwfAsync.Repo

config :fun_with_flags, :cache_bust_notifications, enabled: false
