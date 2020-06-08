import std.stdio;
import std.algorithm;
import std.string;
import std.uni : lineSep;
import std.regex;
import std.array;


// Split into array with Whitespace, tabs and words.
// Then search for words to change
// change the words.
// join the words with the tabs and whitespace again
int lineNumber;
void main(){

	File exampleFile = File("exampleText.txt");
	lineNumber = 0;
	foreach(line; exampleFile.byLine){
		
		if (line == " Sphinx of black quartz, judge my vow.\r"){
			line = chomp(line, "\r");
			line[5] = 'F';
			writeln(line[5]);
			char[][] ss = split(line, regex(` `));
				ss.length.writeln;
				//ss[3].writeln;
				ss[3] = "nnooooodsd".dup;
				ss.writeln;
				writeln(join(ss));
			
			writeln(lineNumber, ". hahahahahahaha", line, " nononono");
			
		} else {
			writeln( lineNumber, ". ", line);
		}
		
		lineNumber++;
	}
}

	//exampleFile.reopen(null);

	
	
	
/* 
	lineNumber = 0;
	foreach(line; exampleFile.byLine){
		
		lineNumber++;
		writeln(lineNumber, ". ", line);
		
	}
	
	exampleFile.rewind; */
