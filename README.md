# wifi

![demo](https://user-images.githubusercontent.com/74944/28748245-1c306b8c-74b3-11e7-8fb7-3aa2ff60a5b0.png)

macOS-only command line tool displaying the name of the WiFi network your are
currently connected to. Works great in tmux. Probably compatible with your
favorite shell.

## Usage

```
general:
  -t            output tmux status bar format
  -z            output zsh prompt format
  -s            WiFi symbol             default: none
  -d            WiFi network device     default: en0
  -n            no colors
colors:                                                 tmux     zsh
  -g <color>    connected               default: 1;32 | green  | 64
  -m <color>    disconnected            default: 1;33 | yellow | 136
  -w <color>    warn battery level      default: 0;31 | red    | 160
```

## Install

### Homebrew

```bash
brew tap kjagiello/wifi
brew install wifi
```

### DIY

```bash
git clone https://github.com/kjagiello/wifi.git
cd wifi
make install
```

## Sample tmux config

```
set -g status-right "#(wifi -t -g#77d656 -w#d94a4a -m#d7d682) │ #(date +%%T)"
```

## "Cool, but I want the battery thingy from the screenshot"

[![Battery](https://user-images.githubusercontent.com/74944/28754971-d705ced2-7550-11e7-8aea-8665265467e2.png)](https://github.com/Goles/Battery)
