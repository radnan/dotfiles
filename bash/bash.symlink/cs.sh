# List files after cd
function cs()
{
	builtin cd "$@" && ls
}
alias cd="cs"
