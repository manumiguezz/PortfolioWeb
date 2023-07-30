import 'dart:ui';

class Palette {
  
  final List<Color> components;

  Palette({required this.components});

  factory Palette.fromJson(List<String> json) {
    var components = json.map((c) => Color(int.tryParse(c) ?? 0)).toList();
    return Palette(components: components);
  }
}
