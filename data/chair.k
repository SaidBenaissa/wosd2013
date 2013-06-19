import("JavaScript.Regexp");
import("JavaScript.Array");
import("JavaScript.String");
import("Type.File");
import("Type.Bytes");
import("Konoha.NameSpace");
import("Syntax.CStyleFor");
import("Syntax.CStyleWhile");
import("Syntax.StringInterpolation");

String readFile(String path) {
    FILE file = new FILE(path, "rb");
    int len = 0;
    String tmp = "";
    while (true) {
        int ch = file.getc();
        if (ch == -1) {
            break;
        }
        len = len + 1;
    }
    file.close();

    if (len == 0) {
        return "";
    }

    Bytes buf = new Bytes(len);
    file = new FILE(path, "r");
    file.read(buf, 0, len);
    file.close();
    return new String(buf);
}

void main() {
    String[] data = readFile("./data/chair.txt").split("\n");
    File f = new File("./data/chair.html", "w");
    int len = data.getsize();
    for (int i=0; i < len; i = i + 4) {
        String name    = data.get(i+0);
        String url     = data.get(i+1);
        String company = data.get(i+2);
        f.println("<li><a href=\"${url}\">${name}</a> (${company})</li>");
    }
}

main();
