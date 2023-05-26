Clear-Host

Set-Location $PSScriptRoot

Start-Process "http://localhost:4000"

<#
	bundle update jekyll
	bundle install
	gem uninstall jekyll
#>

bundle exec jekyll serve

# Read-Host
