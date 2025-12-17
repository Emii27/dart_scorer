class TargetSector {
  final int value;
  final String label;

  const TargetSector(this.value) : label = '$value';

  const TargetSector.custom({required this.value, required this.label});

  const TargetSector.bull() : value = 25, label = "BULL";

  const TargetSector.zero() : value = 0, label = "";
}
