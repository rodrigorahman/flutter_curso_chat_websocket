import 'package:chat_websocket/app/shared/string_utils.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('should returns initials for 1 name', () async {
    expect(StringUtils.getInitialsName('Rodrigo'), 'RO');
  });

  test('should returns initials for 2 names', () async {
    expect(StringUtils.getInitialsName('Rodrigo Rahman'), 'RR');
  });
  test('should returns initials for 3 names', () async {
    expect(StringUtils.getInitialsName('Rodrigo Rahman Almeida'), 'RR');
  });

  test('should return asertError for null name', () async {
    expect(() => StringUtils.getInitialsName(null), throwsAssertionError);
  });
}
