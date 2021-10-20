defmodule FwfAsync.Repo do
  use Ecto.Repo,
    otp_app: :fwf_async,
    adapter: Ecto.Adapters.Postgres
end
