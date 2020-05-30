/*
	This code searche and find occurences in files.

*/

import std.stdio, std.regex;
import std.algorithm.searching : findSplit;

void main(){

	auto file = File("I:/isolinux/isolinux.cfg");
	
	int lineNumber = 0;
	char[][int] array;
	
	//array ~= "haha";

	/*
	array ~= [1];
	array ~= [[1, "456"]];
	*/

	foreach (line ; file.byLine) {
		
		if (line == "default live" && (line[0] != '#')) {
			writeln("[", lineNumber, ".] ", line);
			array[lineNumber] ~= line;
			writeln("     Isolinux is already set to boot directly to a live session");
		} else if (line.findSplit("default") && (line[0] != '#')){
			writeln("[", lineNumber, ".] ", line);
			array[lineNumber] ~= line;
			writeln("     A duplicate default option is found.");
		} else {
			writeln(lineNumber, ". ", line);
		}
		lineNumber++;
	}
	
	
	file.close();
	writeln(array);
	writeln("Occurrences: ", array.length);
	if ( array.length > 1){
		writeln("There is a conflict.");

		
	}
			foreach (index, item; array) {
			writeln(index, ". ", item);
		}
	//Autoresolve other conflicting default options by commenting them.
	//Saving their previous state would be great

	

}

/*
	string textLine = "  dd Hello World !";
	auto ss = split(textLine, regex(` `));
	ss.length.writeln;
	write("--");
	ss[2].write;
	write("--");
	*/
