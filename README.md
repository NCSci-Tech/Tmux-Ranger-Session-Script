Tmux + Ranger Session Script

This Bash script creates a new tmux session with a split layout:
Ranger runs in the left pane, and an interactive terminal opens in the right pane.

Overview

This script automates the following:

Creates a new tmux session (my_session)

Splits the window vertically

Launches Ranger in the left pane

Focuses the right pane for terminal use

Attaches to the session

Requirements

Install the required tools:

# Ubuntu / Debian
sudo apt install tmux ranger

# macOS
brew install tmux ranger

Usage
# Make the script executable
chmod +x tmuxStart.sh

# Run the script
./tmuxStart.sh

Script
#!/bin/bash

# Create a new tmux session in detached mode
tmux new-session -d -s my_session

# Split the window vertically
tmux split-window -h

# Launch Ranger in the left pane
tmux send-keys -t my_session:0.0 'ranger' C-m

# Focus the right pane
tmux select-pane -t my_session:0.1

# Attach to the session
tmux attach -t my_session

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
