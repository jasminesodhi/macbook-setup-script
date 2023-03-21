# Setup Script for MacBook
This shell script is designed to automate the setup process for a new MacBook. It installs the necessary softwares and development environments (primarily through [Homebrew](https://brew.sh)) that I use for coding. The script is designed to be run on a fresh installation of macOS, and it assumes that the user has administrative privileges.

## Requirements
This script requires only macOS with default terminal and no other software to be pre-installed.

## Installation
1. Download the setup script from the repository and save it to your local machine.
2. Open Terminal and navigate to the directory where the script is saved.
3. Run the script by typing `./setup.sh` in the Terminal.
4. Follow the on-screen prompts to complete the installation.
5. Complete any steps that apply from the post installation part [here](https://github.com/jasminesodhi/macbook-setup-script/blob/main/setup.sh#L20).

Note: This script creates a new folder called raw in the same directory as the script and any binaries generated from the installations will be in this raw folder. All apps will be moved to the default mac Applications folder by Homebrew.

## Softwares Installed
The latest versions of the following softwares and development environments are installed by the script:

<details>
<summary>Apps</summary>

- [Pyenv](https://github.com/pyenv/pyenv)
- [Ruby](https://github.com/ruby/ruby)
- [rbenv](https://github.com/rbenv/rbenv)
- [Node.js](https://github.com/nodejs/node)
- [nvm](https://github.com/nvm-sh/nvm)
- [CocoaPods](https://github.com/CocoaPods/CocoaPods) 
- [Watchman](https://github.com/facebook/watchman)
- [MySQL](https://dev.mysql.com/doc/refman/8.0/en/)
- [Git](https://git-scm.com)
- [gh](https://github.com/cli/cli)
- [Wget](https://www.gnu.org/software/wget/)
- [curl](https://curl.se)
- Google Chrome
- Google Drive
- [LastPass](https://www.lastpass.com)
- Dropbox
- [Visual Studio Code](https://code.visualstudio.com/)
- [iTerm2](https://www.iterm2.com/)
- [Android Studio](https://developer.android.com/studio/)
- [Zulu 11](https://www.azul.com/downloads/)
- [Vysor](https://www.vysor.io/)
- [React Native Debugger](https://github.com/jhen0409/react-native-debugger)
- [Sequel Pro](https://www.sequelpro.com/)
- [Beekeeper Studio](https://www.beekeeperstudio.io/)
- [Postman](https://www.postman.com/)
- [Unity](https://unity.com/products)
- Zoom
- Teamviewer
- Transmission
- Notion
- WhatsApp
- Slack
- Discord
- Spotify
- Microsoft Office
- [Parallels](https://www.parallels.com/products/desktop/)
- [CleanMyMac X](https://macpaw.com/cleanmymac)
</details>

## Usage
Once the installation is complete, you can start using the software and development environments immediately.

## License
This script is released under the MIT License. See the LICENSE file for more details.

## Contributions
Contributions are welcome! If you find any issues or would like to suggest improvements, please open an issue or pull request on the repository.

Additionally, feel free to modify the script to suit your specific needs, or to fork this repository and create your own customized development environment setup script. Happy coding!