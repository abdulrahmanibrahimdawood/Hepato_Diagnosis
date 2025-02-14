abstract class Failuer {
  final String message;

  Failuer({required this.message});
}

class ServerFailuer extends Failuer {
  ServerFailuer({required super.message});
}
