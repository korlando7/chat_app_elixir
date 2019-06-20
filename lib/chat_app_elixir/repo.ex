defmodule ChatAppElixir.Repo do
  use Ecto.Repo,
    otp_app: :chat_app_elixir,
    adapter: Ecto.Adapters.Postgres
end
