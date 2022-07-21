#!/usr/bin/ruby

require "fileutils"
##### Utils #######

def install(program)
  installation_options = {
    brew: 'ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"',
    oh_my_zsh: 'sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"',
    tmux: "brew install tmux",
    nvim: "brew install neovim",
    "reattach-to-user-namespace": "brew install reattach-to-user-namespace"
  }
  `which -s #{program}`
  if $?.success?
    return puts "#{program} already installed ✅" 
  else
    puts "🟡 #{program} installing"
    exec installation_options[program.to_sym]
  end
end

##### end Utils ######

def main
  install "brew"
  install "tmux"
  unless Dir.exists?(File.expand_path "~/.tmux")
    command = Thread.new do
      system("git clone https://github.com/gpakosz/.tmux.git")
    end
    command.join
    File.symlink(File.expand_path("~/.tmux/.tmux.conf"),File.expand_path("~/.tmux.conf"))
    FileUtils.cp(File.expand_path("~/.tmux/.tmux.conf.local"), File.expand_path("~/.tmux.config.local"))
    puts "Installing fonts"
    command = Thread.new do
      system("git clone git@github.com:powerline/powerline.git")
    end
    command.join
    FileUtils.cp(File.expand_path("~/powerline/font/PowerlineSymbols.otf"), File.expand_path("~/Library/Fonts/PowerlineSymbols.otf"))
    exec "rm -rf powerline";
  end
  install "reattach-to-user-namespace"
  install "nvim"
  File.symlink(File.expand_path("~/dotfiles/nvim"),File.expand_path("~/.config/nvim"))
end

main
