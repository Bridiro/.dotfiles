export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git tailscale)

source $ZSH/oh-my-zsh.sh

alias cd..="cd .."
alias cd...="cd ../.."
alias elf2bin="arm-none-eabi-objcopy -O binary -S"
alias e-agle="cd /Users/alebridi/programmazione/e-agle"
alias programmazione="cd /Users/alebridi/programmazione"
alias bin2srec="/Users/alebridi/programmazione/e-agle/bin2srec/bin2srec"
alias bin2sreco="/Users/alebridi/programmazione/e-agle/bin2srec/bin2srec -o 8020000"
alias renode='mono /Applications/Renode.app/Contents/MacOS/bin/Renode.exe'
alias renode-test='/Applications/Renode.app/Contents/MacOS/tests/renode-test'
alias ls="eza --icons --git"

source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export OPENSSL_DIR=$(brew --prefix openssl@3)
export PKG_CONFIG_PATH=$OPENSSL_DIR/lib/pkgconfig:$PKG_CONFIG_PATH
export LD_LIBRARY_PATH=$OPENSSL_DIR/lib:$LD_LIBRARY_PATH
export LIBRARY_PATH=$OPENSSL_DIR/lib:$LIBRARY_PATH
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"
export PATH="$PATH:/Applications/Xcode.app/Contents/Developer/usr/bin"
export PATH="$PATH:/Applications/ArmGNUToolchain/13.3.rel1/arm-none-eabi/bin"
export PATH="$PATH:/opt/homebrew/opt/llvm/bin"

if [ -d "/opt/homebrew/opt/ruby/bin" ]; then
  export PATH=/opt/homebrew/opt/ruby/bin:$PATH
  export PATH=`gem environment gemdir`/bin:$PATH
fi


eval $(opam env)

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"


export STM32_PRG_PATH=/Applications/STMicroelectronics/STM32Cube/STM32CubeProgrammer/STM32CubeProgrammer.app/Contents/MacOs/bin

# Begin: PlatformIO Core completion support
autoload -Uz compinit
compinit
eval "$(_PIO_COMPLETE=zsh_source pio)"
# End: PlatformIO Core completion support


export STM32CubeMX_PATH=/Applications/STMicroelectronics/STM32CubeMX.app/Contents/Resources

. $HOME/export-esp.sh

export VALA_VAPIDIR="$(brew --prefix vala)/share/vala-0.56/vapi:/opt/homebrew/share/vala/vapi"
