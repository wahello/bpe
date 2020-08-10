defmodule BPE.Mixfile do
  use Mix.Project

  def project do
    [
      app: :bpe,
      version: "5.8.0",
      description: "BPE Business Process Engine",
      package: package(),
      deps: deps()
    ]
  end

  def application do
    [mod: {:bpe_otp, []}, applications: [:syn, :kvs]]
  end

  def package do
    [
      files: ~w(include lib priv src mix.exs rebar.config),
      licenses: ["ISC"],
      maintainers: ["Namdak Tonpa"],
      name: :bpe,
      links: %{"GitHub" => "https://github.com/synrc/bpe"}
    ]
  end

  def deps do
    [
      {:ex_doc, "~> 0.11", only: :dev},
      {:syn, "~> 2.1.0"},
      {:rocksdb, "~> 1.3.2"},
      {:kvs, "~> 7.1.1"}
    ]
  end
end
