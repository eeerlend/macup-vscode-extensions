#!/bin/bash

function install_or_upgrade_cask {
  cask=${1}
  if brew cask ls --versions "$cask" > /dev/null; then
		report_from_package "$cask already installed."
	else
		report_from_package " Installing cask $cask"
		brew cask install "$cask" --appdir=/Applications
	fi
}

# Install Visual Studio Code if not present
install_or_upgrade_cask "visual-studio-code"

# Install important extensions to VS Code
# todo: check if array is declared up front!
# shellcheck disable=SC2154
for ((i=0; i<${#macup_vscode_extensions[@]}; ++i)); do
	code --install-extension "${macup_vscode_extensions[i]}" --force
done
