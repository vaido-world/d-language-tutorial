import std.stdio;
void main() {
    auto file = File("myfile.txt");
    string buffer;

    foreach (line ; file.byLine) {
        writeln(line);
    }

    f.close();

}
