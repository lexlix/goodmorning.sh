#!/bin/bash

# Variables
basedir=~
# - - -

echo "Good morning"

atom ${basedir}/notes/
echo "Open Atom"

today=$(date +"%Y-%m-%d")
mkdir ${basedir}/notes > /dev/null 2>&1
mkdir ${basedir}/notes/daily > /dev/null 2>&1
mkdir ${basedir}/notes/meetings > /dev/null 2>&1

FILE=${basedir}/notes/daily/${today}.md
if test -f "$FILE"; then
	echo "Daily notes already exists."
	echo ""
else
	touch ${basedir}/notes/daily/${today}.md
	echo -e "xx:xx - xx:xx\n\n# Meetings:\n- \n\n\n# TODOs\n- " > ${basedir}/notes/daily/${today}.md
	echo "Created daily notes file"
	echo ""
fi



while true
do
	read -p "Create a Meeting? (y/N): " confirm && [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1
	read -p "Meeting name: " meetingname

	meetingfilename="$(sed 's/ /-/g' <<<$meetingname)"

	FILE=${basedir}/notes/meetings/${today}_${meetingfilename}.md
	if test -f "$FILE"; then
  	echo "Meeting already exists."
		echo ""
	else
		read -p "Participants: " participants
		read -p "Time: " time
		echo -e "${time}\n\n${participants}\n\n# ${meetingname} \n\n## TODOs\n- \n\n## Notes\n- " > ${basedir}/notes/meetings/${today}_${meetingfilename}.md
		echo "Created meeting notes file"
		echo ""
	fi

done
