defmodule ChatMorseJapaneseKana.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      ChatMorseJapaneseKanaWeb.Telemetry,
      ChatMorseJapaneseKana.Repo,
      {DNSCluster, query: Application.get_env(:chat_morse_japanese_kana, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: ChatMorseJapaneseKana.PubSub},
      # Start the Finch HTTP client for sending emails
      {Finch, name: ChatMorseJapaneseKana.Finch},
      # Start a worker by calling: ChatMorseJapaneseKana.Worker.start_link(arg)
      # {ChatMorseJapaneseKana.Worker, arg},
      # Start to serve requests, typically the last entry
      ChatMorseJapaneseKanaWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: ChatMorseJapaneseKana.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    ChatMorseJapaneseKanaWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
