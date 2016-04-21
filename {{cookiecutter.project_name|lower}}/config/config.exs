use Mix.Config

default_port = "{{cookiecutter.default_plug_port}}"
project_name = :{{ cookiecutter.project_name|lower|replace(' ', '-') }}

config project_name,
  server_port: System.get_env("PORT") || default_port
