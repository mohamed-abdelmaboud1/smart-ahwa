import 'package:smart_ahwa/core/routing/routes.dart';
import 'package:smart_ahwa/features/getstarted/presentation/views/getstarted_view.dart';
import 'package:smart_ahwa/features/smart_ahwa/presentation/views/smart_ahwa_main_view.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final router = GoRouter(
    initialLocation: Routes.getStarted,
    routes: [
      GoRoute(
        path: Routes.smartAhwaMain,
        builder: (context, state) => const SmartAhwaMainView(),
      ),

      GoRoute(
        path: Routes.getStarted,
        builder: (context, state) => const GetStartedView(),
      ),
    ],
  );
}


// learning comments 
// the diffrent between the go and push is that go is used to navigate to a specific path and on the way back 
// it will pop the current path and go back to the previous path
// and push is used to navigate to a specific page and add it to the stack and on the way back
// it will pop the current page and go back to the previous page in the stack
// so if you want to navigate to a specific page and not add it to the stack you should use go
// if you want to navigate to a specific page and add it to the stack you should use push


// simply go deals with the path and push deals with the page stack
