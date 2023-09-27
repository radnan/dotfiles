# Quickly grep and list search results
function g()
{
	grep -inrI "$@" *
}
function gf()
{
	g "$@" | gawk -F ':' '{ print $1 }' | sort -u;
}
