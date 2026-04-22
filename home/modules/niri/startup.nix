{ vars, ... }:
[
  { argv = [ "firefox" ]; }
  {
    argv =
      if (vars.terminal == "kitty") then
        [
          "kitty"
          "sh"
          "-c"
          "'tmux attach -t || tmux new -s default'"
        ]
      else
        [ vars.terminal ];
  }
]
