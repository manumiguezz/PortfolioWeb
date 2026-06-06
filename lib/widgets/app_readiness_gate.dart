import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:portfolio_web_version/widgets/app_ready_notifier_stub.dart'
    if (dart.library.html) 'package:portfolio_web_version/widgets/app_ready_notifier_web.dart';
import 'package:portfolio_web_version/widgets/precache_assets.dart';

class AppReadinessGate extends StatefulWidget {
  const AppReadinessGate({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  State<AppReadinessGate> createState() => _AppReadinessGateState();
}

class _AppReadinessGateState extends State<AppReadinessGate> {
  bool _isAppReady = false;
  bool _isPreparingApp = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_isAppReady && !_isPreparingApp) {
      _isPreparingApp = true;
      unawaited(_prepareInitialVisualFrame());
    }
  }

  Future<void> _prepareInitialVisualFrame() async {
    await precacheInitialPortfolioAssets(context);

    if (!mounted) return;
    await SchedulerBinding.instance.endOfFrame;

    if (!mounted) return;
    await Future<void>.delayed(const Duration(milliseconds: 32));

    if (!mounted) return;
    _isAppReady = true;
    notifyPortfolioAppReady();
    unawaited(_precacheDeferredAssetsAfterReveal());
  }

  Future<void> _precacheDeferredAssetsAfterReveal() async {
    await Future<void>.delayed(const Duration(milliseconds: 1400));
    if (!mounted) return;
    await precacheDeferredPortfolioAssets(context);
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
