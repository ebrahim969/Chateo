import 'package:go_router/go_router.dart';

void customPushNavigate(context, String path, {Object? extra}) {
  GoRouter.of(context).push(
    path,
    extra: extra,
  );
}

void customPopNavigate(context) {
  GoRouter.of(context).pop();
}

void customPushReplacementNavigate(context, String path) {
  GoRouter.of(context).pushReplacement(path);
}

void delayedNavigate(context, path) {
  Future.delayed(const Duration(seconds: 2), () {
    customPushReplacementNavigate(context, path);
  });
}
