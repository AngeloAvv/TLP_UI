import 'package:tlp_ui/errors/repository_error.dart';

abstract class Repository {
  const Repository();

  Future<T> safeCode<T>(Future<T> Function() block) async {
    try {
      return await block();
    } catch (error) {
      throw RepositoryError(error);
    }
  }
}

extension RepositoryStream<T> on Stream<T> {
  Stream<T> safeCode() => handleError((error) => RepositoryError(error));
}
