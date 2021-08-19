import 'dart:math';

int colorgenerator() {
  int x = Random().nextInt(8);
  return x;
}

String stringMod(String str, int n) {
  String s = "", space = "";
  for (int i = 0; i < n; i++) space += " ";
  for (int i = 0; i < str.length; i++)
    if (str[i] == ' ')
      s += space;
    else
      s += str[i];
  return s;
}
