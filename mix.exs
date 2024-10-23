defmodule HelloElixir.MixProject do
  use Mix.Project

  def project do
    [
      app: :hello_elixir,
      version: "0.1.0",
      elixir: "~> 1.17",
      start_permanent: Mix.env() == :prod,
      description: description(), # This is added for the description
      package: package(),         # Package info is added here
      deps: deps(),

      source_url: "https://github.com/iamkristian/hello-elixir", # Github
      docs: [
        source_ref: "master"
      ] 
    ]
  end

  # The description used on hex.pm
  defp description() do 
    ~s"""
    This is a nice description for the hello elixir project, which sole purpose
    is to explore the possibility of publishing a package on hex.pm.
    """
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, "~> 0.0"}
    ]
  end

  # Hex requires package metadata on licenses and links
  defp package() do
    [
      licenses: ["MIT"],
      links: %{"Github" => "https://github.com/iamkristian/hello-elixir"}
    ]
  end

end
