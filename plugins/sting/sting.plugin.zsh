export WORK="/u/$(id -un)"

unset SPC6

if [[ ${CALLID} != "" ]]
then
	if [[ -f /etc/setwd ]]
	then
		. /etc/setwd --skip-tables || exit
	fi

	TAG="[$CALLID]"
elif [[ "$STINGVER" != "" ]]
then
	[[ -f /etc/setdakcsenv ]] && . /etc/setdakcsenv
	TAG="[$STINGVER]"
else
	[[ -f /etc/setdakcsenv ]] && . /etc/setdakcsenv
	TAG=""
fi

[[ "${CORESTING}" != "" ]] && export DG_ARCHIVE_DIR="${CORESTING}/$(basename ${DG_ARCHIVE_DIR})"

# setup my aliases
alias RUN='RUN -q'

# aliases to navigate sting
alias s='cd ${STINGDIR}'
alias dsxqi='cd ${SQL_DIR}'
alias p='cd ${SQL_DIR}/procedures'
alias udf='cd ${SQL_DIR}/udf'
alias logs='cd ${STINGDIR}/logs'
alias dlogs='cd ${SQL_DIR}/logs'
