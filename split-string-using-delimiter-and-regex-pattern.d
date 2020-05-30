import std.stdio, std.regex;

void main()
{
	string s = "Hello World !";
	auto ss = split(s, regex(` `));
	ss.length.writeln;
	ss[0].writeln;
}
