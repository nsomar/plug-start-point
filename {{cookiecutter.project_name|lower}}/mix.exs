defmodule {{cookiecutter.elixir_mod_name}}.Mixfile do
  use Mix.Project

  def project do
    [app: :{{ cookiecutter.project_name|lower|replace(' ', '-') }},
     version: "{{cookiecutter.project_version}}",
     elixir: "~> {{cookiecutter.elixir_version}}",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  def application do
    [applications: [:logger, :plug, :cowboy],
     mod: { {{cookiecutter.elixir_mod_name}}.Server, []}]
  end

  defp deps do
    [{:plug, "> 0.0.0"},
     {:cowboy, "> 0.0.0"}]
  end
end
