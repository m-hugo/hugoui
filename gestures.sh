currworkspace(){
	swaymsg -t get_outputs | jq -r '.[] | select(.focused) | .current_workspace'
}

LeftEdgeSlideUp(){
	light -A $(($1/50))
}
LeftEdgeSlideDown(){
	light -U $(($1/50))
}
LeftEdgePullUp(){
	swaymsg "workspace 1"
}
LeftEdgePullMid(){
	swaymsg "workspace $(($(currworkspace) - 1))"
}
LeftEdgePullDown(){
	swaymsg "workspace 3"
}
RightEdgePullMid(){
	swaymsg "workspace $(($(currworkspace) + 1))"
}
"$@"
