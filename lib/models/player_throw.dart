class PlayerThrow {
  final int value;
  final ThrowType throwType;

  PlayerThrow({required this.value, required this.throwType});

  @override
  String toString() {
    return switch (throwType) {
      .single => '$value',
      .double => 'D$value',
      .triple => 'T$value',
    };
  }
}

enum ThrowType { single, double, triple }
