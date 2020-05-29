//https://dlang.org/library/std/stdio/file.by_line.html

import std.stdio, std.range;
import std.algorithm.searching : findSplit;
import std.file;

void main()
{
    std.file.remove("tothisfile.txt");

    auto file = File("file.txt"); 
    auto range = file.byLine();

    foreach (line; range){
	if (line.findSplit("sd")){
		writeln("Alright");

	}
        std.file.append("tothisfile.txt", line);
	}
}
