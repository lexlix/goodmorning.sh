# goodmorning.sh

Daily notes filecreator.  
Creates to following filestructure of Markdown files for daily notes:

```
~
└───notes
    └───daily
    │   yyyy-mm-dd.md
    │   ...
    └───meetings
        yyyy-mm-dd_MEETINGNAME.md
        ...
```

Also opens the notes dir in the atom editor.  

If not existend, the a new daily file with the following structure will be created:  
`~/notes/daily/yyyy-mm-dd.md`
```
xx:xx - xx:xx

# Meetings:
- 


# TODOs
- 


# Notes
- 
```

The script will ask to create a new meeting and ask for a meeting name, participants and time string.  
If not existing a new file with the following structure will be created:  
`~/notes/meetings/yyyy-mm-dd_MEETINGNAME.md`
```
${yyyy-mm-dd}

${PARTICIPANTS}

# ${meetingname}

## TODOs
- 

## Notes
- 
```
