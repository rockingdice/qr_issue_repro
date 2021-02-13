import 'package:qlevar_router/qlevar_router.dart';
import 'package:qr_issue_repro/pages.dart';

class AppRoutes {
  final routes = <QRouteBase>[
    QRoute(
        path: '/main/apps',
        page: (child) => PageMain(child: PageOther(),)),
    QRoute(
        path: '/main/home',
        page: (child) => PageMain(child: PageOther(),)),
    QRoute(
        path: '/main/app/:id',
        page: (child) => PageMain(child: PageOther(),)),
    QRoute(
        path: '/main/app/edit/:id',
        page: (child) => PageMain(child: PageOther(),)),
    QRoute(
        path: '/login',
        page: (child) => PageMain(child: PageOther(),)),
    QRoute(
        path: '/404',
        page: (child) => PageMain(child: PageOther(),)),
  ];
}
