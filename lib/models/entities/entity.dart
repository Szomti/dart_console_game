part of entity;

abstract class Entity {
  final String uuid;

  Entity() : uuid = Uuid().v4();

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Entity && runtimeType == other.runtimeType && uuid == other.uuid;

  @override
  int get hashCode => uuid.hashCode;
}
