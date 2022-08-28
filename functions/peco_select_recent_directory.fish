function peco_select_recent_directory
  set -l query (commandline)
  if test -n $query
    set peco_flags --query "$query"
  end

  # Using sed, digits and spaces are shulinked.
  # ^ is string head
  # [0-9]\+ is multiple digits
  # \s\+ is multiple spaces
  cdr -l | sed 's/^[0-9]\+\s\+//' | peco --prompt="cdr >" $peco_flags | read line

  if test $line
    cd $line
    commandline -f repaint
  end
end
