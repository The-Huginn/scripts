SESH="tmux_session"

tmux has-session -t $SESH 2>/dev/null

if [ $? != 0 ]; then
	tmux new-session -d -s $SESH -n "default"

	tmux send-keys -t $SESH:default "cd ~/rixo" C-m

	tmux new-window -t $SESH -n "downloads"
	tmux send-keys -t $SESH:downloads "cd ~/Downloads" C-m

	tmux new-window -t $SESH -n "scripts"
	tmux send-keys -t $SESH:scripts "cd ~/scripts" C-m

    tmux select-window -t $SESH:default
fi

tmux attach-session -t $SESH
