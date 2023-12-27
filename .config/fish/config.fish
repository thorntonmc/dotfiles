if test (uname) = "Darwin"
	fish_add_path /Applications/Visual Studio Code.app/Contents/Resources/app/bin
end
fish_add_path "$HOME/go/bin"
fish_add_path "$HOME/.krew/bin"
set -gx EDITOR nvim
eval ssh-add

if test -d /opt/homebrew/bin
  eval (/opt/homebrew/bin/brew shellenv)
end

if status is-interactive
    # Commands to run in interactive sessions can go here
end

function fish_prompt
  set_color brgreen
  echo -n (whoami)
  echo -n @
  echo -n (hostname -s)
  set_color normal
  echo -n :
  set_color brblue
  echo -n (prompt_pwd -d 0)
  set_color -o yellow
  echo (fish_git_prompt)
  set_color brgreen
  echo "\$ "
end

set -gx DOCKER_HOST "unix://$HOME/.colima/docker.sock"
