import 'package:flutter/material.dart';

final Set<BuildContext> _contextsWithOpenNavigation = <BuildContext>{};

Future<T?> pushOnce<T>(BuildContext context, Route<T> route) async {
  if (!context.mounted || !_contextsWithOpenNavigation.add(context)) {
    return null;
  }

  try {
    return await Navigator.of(context).push(route);
  } finally {
    _contextsWithOpenNavigation.remove(context);
  }
}
