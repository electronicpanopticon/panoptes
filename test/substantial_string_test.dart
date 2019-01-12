import "package:test/test.dart";
import 'package:panoptes/src/substantial_string.dart';

void main() {
  test("Empty strings throw FormatException", () {
    expect(() => new SubstantialString(' '),
        throwsA(new TypeMatcher<FormatException>()));
    expect(() => new SubstantialString(''),
        throwsA(new TypeMatcher<FormatException>()));
  });

  test("Null strings throw FormatException", () {
    expect(() => new SubstantialString(null),
        throwsA(new TypeMatcher<FormatException>()));
  });

  test("Substantial strings have their value", () {
    const s = 'substantial string';
    expect(new SubstantialString(s).value, equals(s));
  });

  test("Substantial strings toString returns their value", () {
    const s = 'substantial string';
    SubstantialString subS = new SubstantialString(s);
    expect(subS.toString(), equals(s));
  });
}
