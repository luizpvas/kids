defmodule Kids.Repo do
  use Ecto.Repo,
    otp_app: :kids,
    adapter: Ecto.Adapters.Postgres
end
