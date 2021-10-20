defmodule FwfAsync.MixProject do
  use Mix.Project

  def project do
    [
      app: :fwf_async,
      version: "0.1.0",
      elixirc_paths: ["lib", "test/support"],
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {FwfAsync.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ecto_sql, "~> 3.7"},
      {:fun_with_flags, "~> 1.6"},
      {:postgrex, ">= 0.0.0"}
    ]
  end
end
