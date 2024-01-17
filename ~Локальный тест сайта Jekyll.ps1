Clear-Host

Set-Location $PSScriptRoot
# Set-Location "X:\source\repos\VN-test"

Start-Process "http://localhost:4000"

<#
	bundle update jekyll
	bundle install
	gem uninstall jekyll
#>

bundle exec jekyll serve

# Read-Host
