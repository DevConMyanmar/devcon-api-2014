defmodule Devcon.Mixfile do
  use Mix.Project

  def project do
    [ app: :devcon,
      version: "0.0.1",
      elixir: "~> 1.0.0-rc1",
      elixirc_paths: ["lib", "web"],
      deps: deps ]
  end

  # Configuration for the OTP application
  def application do
    [
      mod: { Devcon, [] },
      applications: [:phoenix, :cowboy, :logger,:postgrex ,:ecto, :json]
    ]
  end

  # Returns the list of dependencies in the format:
  # { :foobar, git: "https://github.com/elixir-lang/foobar.git", tag: "0.1" }
  #
  # To specify particular versions, regardless of the tag, do:
  # { :barbat, "~> 0.1", github: "elixir-lang/barbat" }
  defp deps do
    [
      {:phoenix, "0.4.1"},
      {:cowboy, "~> 1.0.0"},
      {:postgrex, ">= 0.0.0"},
      {:ecto, "~> 0.2.0"},
      { :json,   "~> 0.3.0"}  
    ]
  end
end
