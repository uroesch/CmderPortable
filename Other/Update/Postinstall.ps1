# Run the post-install script
# basically only cleanup the downloaded zip

Get-ChildItem $DownloadDir -Filter '*.zip' | Foreach-Object {
  Remove-Item $_.FullName
}
