/*
	This code searche and find occurences in files.

*/

import std.stdio, std.regex;
import std.algorithm.searching : findSplit;

void main()
{


auto file = File("E:/isolinux/isolinux.cfg");
	
	int found;
	int lineNumber = 0;
	foreach (line ; file.byLine) {
	
	
		if (line == "default live"){
			writeln("[", lineNumber, ".] ", line);
			found++;
		} else if (line.findSplit("default") &&  (line[0] != '#')){
			writeln("[", lineNumber, ".] ", line);
			found++;
		} else {
			writeln(lineNumber, ". ", line);
		}
		lineNumber++;
	}
	writeln("Occurences: ", found);

	file.close();



}

/*
	string textLine = "  dd Hello World !";
	auto ss = split(textLine, regex(` `));
	ss.length.writeln;
	write("--");
	ss[2].write;
	write("--");
	*/
