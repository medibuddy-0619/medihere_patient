import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:medihere_patient/src/services/locator.config.dart';

final locator = GetIt.instance;

@injectableInit
void setupLocator() => $initGetIt(locator);
