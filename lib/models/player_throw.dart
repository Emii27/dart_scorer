class PlayerThrow {
  final int value;
  final ThrowType throwType;

  PlayerThrow({required this.value, required this.throwType});
}

enum ThrowType { single, double, triple }
