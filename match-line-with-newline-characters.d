import std.stdio;
import std.algorithm;
import std.range;



int lineNumber;

void main(){
	File exampleFile = File("exampleText.txt");
	lineNumber = 0;
	foreach(line; exampleFile.byLine){
		
		lineNumber++;
		writeln(lineNumber, "hah", line);
		
	}
	
	exampleFile.rewind;
	
	lineNumber = 0;
	foreach(line; exampleFile.byLine){
		
		lineNumber++;
		if (line == " Sphinx of black quartz, judge my vow.\u000D"){
			writeln("yes");
		} else {
			writeln( lineNumber, "heeh", line, "|s");
		}
	}
	


  
}

	//exampleFile.reopen(null);
