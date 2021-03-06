defmodule Udpflux.Mixfile do
  use Mix.Project

  def project do
    [app: :udpflux,
     package: package,
     version: "0.0.2",
     elixir: "~> 1.0",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps,
     test_coverage: [tool: ExCoveralls]]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    [
      {:excoveralls, "~> 0.3", only: [:dev, :test]}
    ]
  end

  defp package do
    [
      description: "An opinionated UDP-only InfluxDB client",
      licenses: ["MIT"],
      links: %{"GitHub"=>"https://github.com/timbuchwaldt/udpflux"}
    ]
  end
end
