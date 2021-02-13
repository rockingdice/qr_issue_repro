import 'package:flutter/material.dart';
import 'package:qlevar_router/qlevar_router.dart';

class PageMain extends StatelessWidget {
  final Widget child;

  const PageMain({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var paths = [
      '/main/apps',
      '/main/home',
      '/main/app/1',
      '/main/app/edit/1',
      '/login',
      '/404',
    ];
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Text("PageMain"),
            SizedBox(
              height: 10,
            ),
            Container(
              child: child,
              color: Colors.blue.withAlpha(128),
            ),
            SizedBox(
              height: 20,
            ),
            for (var path in paths)
              ElevatedButton(
                  onPressed: () {
                    QR.to(path);
                  },
                  child: Text(path)),
          ],
        ),
      ),
    );
  }
}

class PageOther extends StatelessWidget {
  final String text;

  const PageOther({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(QR.currentRoute.fullPath),
    );
  }
}
