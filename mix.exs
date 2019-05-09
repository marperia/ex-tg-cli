defmodule TgClient.Mixfile do
  use Mix.Project

  def project do
    [
      app: :tg_client_2,
      version: "0.0.1",
      elixir: "~> 1.3",
      build_embedded: Mix.env == :dev,
      start_permanent: Mix.env == :prod,
      deps: deps(),
      aliases: aliases(),
      description: description(),
      package: package()
    ]
  end

  def application do
    [
      mod: {TgClient, []},
      applications: [:porcelain, :poolboy, :gproc, :afunix]
    ]
  end

  defp deps do
    [
      {:ex_doc, ">= 0.0.0", only: :dev},
      {:porcelain, "~> 2.0"},
      {:gproc, "~> 0.5.0"},
      {:poison, "~> 3.0"},
      {:afunix, github: "tonyrog/afunix", app: false},
      {:poolboy, "~> 1.5"},
    ]
  end

  defp aliases do
    []
  end

  defp description do
    "A Elixir wrapper that communicates with the Telegram-CLI."
  end

  defp package do
    [
      name: :tg_client_2,
      files: ["lib", "mix.exs"],
      maintainers: ["Andrey Noskov", "Alexander Malaev", "Marperia"],
      licenses: ["MIT"],
      links: %{
        "GitHub" => "https://github.com/marperia/ex-tg-cli"
      }
    ]
  end
end
