Tmux + Ranger Session Script

This Bash script creates a new tmux session with a split layout:
Ranger runs in the left pane, and an interactive terminal opens in the right pane.

Customization

Change the session name:
tmux new-session -d -s project_session


Use a horizontal split:
tmux split-window -v


Run a different program in the left pane:
tmux send-keys -t my_session:0.0 'htop' C-m

Exiting

To close the session cleanly:
tmux kill-session -t my_session
