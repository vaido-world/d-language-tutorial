import std.stdio;
void main() {
	auto file = File("myfile.txt");
	
	int lineNumber = 0;
	foreach (line ; file.byLine) {
		writeln(lineNumber, ". ", line);
		lineNumber++;
	}

	file.close();

}
