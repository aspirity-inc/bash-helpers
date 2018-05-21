# bash-helpers

## Installation

Clone the repository on your computer:
```bash
mkdir -p ~/.local
cd ~/.local
git clone git@github.com:aspirity-ru/bash-helpers.git
```

Add path of clonned repository to your PATH environment variable:
```bash
cd ~/.local/bash-helpers
export PATH=$PWD:$PATH
```

Commands above register scripts only for your current bash session. For permanent regstration run following commands:
```bash
cd ~/.local/bash-helpers
echo $'\n'PATH=\"$PWD:\$PATH\" >> ~/.bashrc
```

## Usage
### Misc
#### Docker
Follow [Docker installation steps for ubuntu](https://docs.docker.com/engine/installation/linux/docker-ce/ubuntu/)  and install the latest version of Docker Compose:
```bash
docker-install
```

#### NVM and NodeJS
Install the latest version of NVM and the latest LTS version of NodeJS:
```bash
nvm-install
```

### Applications
Download and unpack application into ~/.apps/appName:
```bash
install-app appName tarFlags downloadUrl 
```
#### Known apps
```bash
install-app telegram xf  "https://telegram.org/dl/desktop/linux"
install-app webstorm xf  "https://data.services.jetbrains.com/products/download?code=WS&platform=linux"
install-app postman  xfz "https://dl.pstmn.io/download/latest/linux64"
```

#### Packages
Download and install package:
```bash
install-app pkgName downloadUrl
```
#### Known packages
```bash
install-package chrome "https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
```

### Git
#### Recheckout branch
Remove local copy of remote branch and checkout it again
```bash
git recheckout <branch> [--force]
```

#### Gone upstream
You have developed a feature, then pushed your branch to a remote.
Then it passed a code review and was merged and removed from the remote.
And now you have some local branch with gone upstream.

To list all such branches run:
```bash
git gone
```
To remove them run:
```bash
git gone rm
```