cask "logisim-evolution" do
  version "4.1.0"

  on_arm do
    sha256 "064497e336aca4d7d85bcb1ff1f77ca109de751c17c22717d1e76cc2dcce9518"

    url "https://github.com/logisim-evolution/logisim-evolution/releases/download/v#{version}/Logisim-evolution-#{version}-aarch64.dmg"
  end
  on_intel do
    sha256 "d5c329c73c3d8d62e9419613f0d4b7d0cd59f6318a8f918ab32b6c5d76cc23af"

    url "https://github.com/logisim-evolution/logisim-evolution/releases/download/v#{version}/Logisim-evolution-#{version}-x86_64.dmg"
  end

  name "Logisim Evolution"
  desc "Digital logic designer and simulator"
  homepage "https://github.com/logisim-evolution/logisim-evolution"

  depends_on macos: ">= :catalina"

  app "Logisim-evolution.app"

  zap trash: "~/Library/Preferences/com.cburch.logisim.plist"
end
