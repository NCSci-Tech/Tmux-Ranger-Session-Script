#!/bin/bash

# Start a new tmux session with a name, here we call it 'my_session'
tmux new-session -d -s my_session

# Split the window vertically (left-right split)
tmux split-window -h

# Start ranger in the left pane
tmux send-keys -t my_session:0.0 'ranger' C-m

# Activate the right pane (terminal)
tmux select-pane -t my_session:0.1

# Attach to the session
tmux attach -t my_session
