cask "itsycal" do
  if MacOS.version <= :el_capitan
    version "0.10.16"
    sha256 "dbf1b104c7a3a2ca3ead9879145cb0557955c29d53f35a92b42f48e68122957c"
  elsif MacOS.version <= :high_sierra
    version "0.11.17"
    sha256 "fda1ba5611deaf4d5b834118b3af37ea9c5d08d1f8c813d04e7dd0552a270e11"
    appcast "https://itsycal.s3.amazonaws.com/itsycal.xml"
  else
    version "0.12.5"
    sha256 "f1cc5d6afc8e0b38ba436eeeb404d6e32f2f109658624d99363de8c32facff25"
    appcast "https://itsycal.s3.amazonaws.com/itsycal.xml"
  end

  # itsycal.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://itsycal.s3.amazonaws.com/Itsycal-#{version}.zip"
  name "Itsycal"
  desc "Menu bar calendar"
  homepage "https://www.mowglii.com/itsycal/"

  auto_updates true

  app "Itsycal.app"

  zap trash: "~/Library/Preferences/com.mowglii.ItsycalApp.plist"
end
