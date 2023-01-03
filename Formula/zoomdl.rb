class Zoomdl < Formula
  include Language::Python::Virtualenv

  desc "Download Zoom recorded meetings easily"
  # homepage "https://github.com/Battleman/zoomdl"
  homepage "https://github.com/niklasbogensperger/zoomdl"
  # url "https://github.com/Battleman/zoomdl/..."
  url "https://github.com/niklasbogensperger/zoomdl/archive/refs/tags/v2023.01.03_homebrew_2.tar.gz"
  # sha256 "..."
  sha256 "e04cf1e129e4726edc2f087b62915a1766cb52493950077fe15b7cad06bccd25"
  version "2023.01.03_homebrew_2"
  license "GPL-3.0-only"
  head "https://github.com/Battleman/zoomdl.git", branch: "master"

  depends_on "python@3.10"

  resource "requests" do
    url "https://files.pythonhosted.org/packages/f5/4f/280162d4bd4d8aad241a21aecff7a6e46891b905a4341e7ab549ebaf7915/requests-2.23.0.tar.gz"
    sha256 "b3f43d496c6daba4493e7c431722aeb7dbc6288f52a6e04e7b6023b0247817e6"
  end

  resource "demjson3" do
    url "https://files.pythonhosted.org/packages/a1/09/4d20c71c1fbf091dc56315368d69a7d46cedf02002adf8e3c87b8e311f0a/demjson3-3.0.5.tar.gz"
    sha256 "ab9aabdd85695f3684fc296f39766a2730f6c8de81d23f7048073dfe2f616d80"
  end

  resource "tqdm" do
    url "https://files.pythonhosted.org/packages/e0/98/e3fbad184a671b51d5a873da486362884e7205eeeed1f597c48731efd122/tqdm-4.50.2.tar.gz"
    sha256 "69dfa6714dee976e2425a9aab84b622675b7b1742873041e3db8a8e86132a4af"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/zoomdl", "-f", "zoom_tutorial_getting_started", "-u", "https://livetraining.zoom.us/rec/play/78Ytfruppj03EoeRswSDU_dxW43ofaisgXIWqfVYnxu2BXlSMFf0YuQUarf_OXJhEbPFJVjDP8_UBJy4"
    assert_predicate testpath/"zoom_tutorial_getting_started.mp4", :exist?
  end
end
