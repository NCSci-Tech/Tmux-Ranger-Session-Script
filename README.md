Tmux + Ranger Session Script

This script launches a new tmux session with two panes; Ranger on the left and a regular terminal on the right.

Features

Creates a named tmux session (my_session)

Splits the window vertically

Starts Ranger in the left pane

Opens a terminal in the right pane

Automatically attaches to the session

**Requirements

Install dependencies:

# Ubuntu/Debian
sudo apt install tmux ranger

# macOS
brew install tmux ranger

Usage
# Make the script executable
chmod +x start-tmux-ranger.sh

# Run the script
./start-tmux-ranger.sh

Script Overview
#!/bin/bash
tmux new-session -d -s my_session       # Create a new tmux session
tmux split-window -h                    # Split window vertically
tmux send-keys -t my_session:0.0 'ranger' C-m  # Launch Ranger in left pane
tmux select-pane -t my_session:0.1      # Focus right pane
tmux attach -t my_session               # Attach to session

Customization

Change session name:

tmux new-session -d -s your_session_name


Horizontal split:

tmux split-window -v


Launch another program:

tmux send-keys -t my_session:0.0 'htop' C-m

🧼 Exit

To close everything:

tmux kill-session -t my_session
