defmodule Gustapay.Repo do
  use Ecto.Repo,
    otp_app: :gustapay,
    adapter: Ecto.Adapters.Postgres
end
