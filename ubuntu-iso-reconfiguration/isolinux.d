/*
	This code searche and find occurences in files.

*/

import std.stdio, std.regex;
import std.algorithm.searching : findSplit;

void main(){

	auto file = File("E:/isolinux/isolinux.cfg");
	
	int found = 0;
	int lineNumber = 0;
	string[int] array;
	array[array.length]="ssdkf";
	array[array.length]="sdf";
	//array ~= "haha";
	writeln(array);
	/*
	array ~= [1];
	array ~= [[1, "456"]];
	*/

	foreach (line ; file.byLine) {
		
		if (line == "default live" && (line[0] != '#')) {
			writeln("[", lineNumber, ".] ", line);
			found++;
			writeln("     Isolinux is already set to boot directly to a live session");
		} else if (line.findSplit("default") && (line[0] != '#')){
			writeln("[", lineNumber, ".] ", line);
			found++;
			writeln("     A duplicate default option is found.");
		} else {
			writeln(lineNumber, ". ", line);
		}
		lineNumber++;
	}
	
	
	file.close();
	
	writeln("Occurrences: ", found);
	if ( found > 1){
		writeln("There is a conflict.");
	}

	

}

/*
	string textLine = "  dd Hello World !";
	auto ss = split(textLine, regex(` `));
	ss.length.writeln;
	write("--");
	ss[2].write;
	write("--");
	*/
