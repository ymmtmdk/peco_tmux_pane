function peco_tmux_pane
  tmux capture-pane \; show-buffer \; delete-buffer | /usr/bin/ruby -ne 'puts $_, $_.split' | sort | uniq | peco | read res
  if test $res
    commandline -i -- $res
  end
end
