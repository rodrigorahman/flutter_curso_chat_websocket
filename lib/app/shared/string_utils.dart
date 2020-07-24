class StringUtils {
  static String getInitialsName(String name) {
    
    assert(name != null);

    if(name == null) return '';

    final names = name.split(' ');

    if (names.length > 1) {
      return names[0].substring(0, 1).toUpperCase() + names[1].substring(0, 1).toUpperCase();
    } else {
      return names[0].substring(0, 2).toUpperCase();
    }
  }

}