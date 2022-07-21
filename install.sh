#!/usr/bin/ruby

require "fileutils"
##### Utils #######
class String
 def black;          "\033[30m#{self}\033[0m" end
 def red;            "\033[31m#{self}\033[0m" end
 def green;          "\033[32m#{self}\033[0m" end
 def brown;          "\033[33m#{self}\033[0m" end
 def blue;           "\033[34m#{self}\033[0m" end
 def magenta;        "\033[35m#{self}\033[0m" end
 def cyan;           "\033[36m#{self}\033[0m" end
 def gray;           "\033[37m#{self}\033[0m" end
 end
def install(program)
  installation_options = {
    brew: 'ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"',
    oh_my_zsh: 'sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"',
    tmux: "brew install tmux",
    nvim: "brew install neovim",
    tree: "brew install tree",
    "reattach-to-user-namespace": "brew install reattach-to-user-namespace"
  }
  `which -s #{program}`
  if $?.success?
    return puts "#{program} already installed ✅".green
  else
    puts "🟡 #{program} installing"
    exec installation_options[program.to_sym]
  end
end

def install_nerd_fonts
  unless Dir.entries(File.expand_path("~/Library/Fonts/")).any? { |font| font.include?("Nerd") }
    command = Thread.new do
      system(" brew tap homebrew/cask-fonts && brew install --cask font-hack-nerd-font ")
    end
    command.join
  else
    puts "Nerd Fonts installed ✅"
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
  unless Dir.exists?(File.expand_path("~/dotfiles/nvim"))
    File.symlink(File.expand_path("~/dotfiles/nvim"),File.expand_path("~/.config/nvim"))
  end

  install "tree"
  install_nerd_fonts
end

main
