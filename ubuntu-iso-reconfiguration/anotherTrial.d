import std.stdio;
import std.array;

void main(){
	File isoLinuxFile = File("I:/isolinux/isolinux.cfg");
	foreach (line ; isoLinuxFile.byLine) {
		if (line[0] != '#'){
			char[][] words = line.split;
			if (words[0] == "default"){
				if (words[1] == "live"){
					writeln("Found", words );
				}
			
			} else {
			
				writeln(line);
			}
			
			
			
			
			
		} else {
			writeln(line);
		}
		
	}
}
