

void main(){
    // convert String, Ints, and Doubles;
    // String to int
    var a, b, c;
    a = 40;
    b = "1";
    c = a + int.parse(b);
    // print(c);

    // String to Double;
    var d, e, f;
    d = 40;
    e = "0.1";
    f = d + double.parse(e);
    // print(f);

    // int to String;
    var g, h, i;
    g = 50;
    h = "30";
    i = g.toString() + h;

    print(i);


}