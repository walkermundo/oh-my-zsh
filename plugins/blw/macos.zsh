if [[ $(uname) == "Darwin" ]]
then
	function addPath
	{
		[[ -d "$1" ]] && [[ "${PATH}" != *"$1"* ]] && PATH="$1:${PATH}"
	}

	# a - black
	# b - red
	# c - green
	# d - brown
	# e - blue
	# f - magenta
	# g - cyan
	# h - light grey
	# x - default foreground/background
	dir_c="cx"
	sym_c="fx"
	socket_c="ex"
	pipe_c="dx"
	exe_c="bx"
	block_c="ag"
	char_c="bd"
	setuid_c="hb"
	setgid_c="ag"
	sticky_dir_c="ad"
	no_sticky_dir_c="ac"

	export LSCOLORS="${dir_c}${sym_c}${socket_c}${pipe_c}${exe_c}${block_c}${char_c}${setuid_c}${setgid_c}${sticky_dir_c}${no_sticky_dir_c}"
	export CLICOLOR=1
	export GOROOT="/usr/local/opt/go/libexec"
	export GOPATH="${HOME}/code/go"

	addPath "${GOROOT}/bin"
	addPath "${HOME}/code/go/bin"
	addPath "${HOME}/bin"
	addPath "/usr/local/mysql/bin"
	addPath "/usr/local/opt/openssl@1.1/bin"
fi
