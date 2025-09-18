import 'package:get_it/get_it.dart';

import '../../features/smart_ahwa/data/repositories/in_memory_order_repository.dart';
import '../../features/smart_ahwa/data/services/order_service_impl.dart';
import '../../features/smart_ahwa/data/services/report_service_impl.dart';
import '../../features/smart_ahwa/domain/repositories/order_repository.dart';
import '../../features/smart_ahwa/domain/services/order_service.dart';
import '../../features/smart_ahwa/domain/services/report_service.dart';

final GetIt getIt = GetIt.instance;

Future<void> setupServiceLocator() async {
  getIt.registerLazySingleton<OrderRepository>(
    () => InMemoryOrderRepository(),
  );


  getIt.registerLazySingleton<OrderService>(
    () => OrderServiceImpl(
      orderRepository: getIt<OrderRepository>(),
    ),
  );

  getIt.registerLazySingleton<OrderServiceImpl>(
    () => getIt<OrderService>() as OrderServiceImpl,
  );

  getIt.registerLazySingleton<ReportService>(
    () => ReportServiceImpl(
      orderRepository: getIt<OrderRepository>(),
    ),
  );
}
