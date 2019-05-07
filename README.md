# macup-vscode-extensions

A [macup](https://github.com/eeerlend/macup) module that installs Visual Studio Code extensions on your mac. Dependant on [macup-homebrew](https://github.com/eeerlend/macup-homebrew)

## Installation
Run the following command to add it to your repo

```bash
npm install eeerlend/macup-vscode-extensions --save
```

## Configuration
Add your own preffered extensions to be installed in the macup configuration file like this...

```bash
macup_vscode_extensions+=(
  eamodio.gitlens # GitLens
  mikestead.dotenv # Support for dotenv file syntax
)
```
