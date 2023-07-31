ptCount=$(pgrep -c ftcollector+)
collector_id=$(pgrep ftcollector+)
echo $collector_id
collector_path=$(pwd $collector_id)


if [[ $ptCount -gt 0 && "$1" == "$collector_path" ]]; 
	then
	  echo "Killing all collectors.."
	  kill $collector_id
	  # pgrep ftcollector+ | xargs kill
	else
	  echo "No current collector process"
fi
