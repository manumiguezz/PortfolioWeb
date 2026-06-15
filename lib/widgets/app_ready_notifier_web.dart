import 'dart:js_interop';
import 'dart:js_interop_unsafe';

void notifyPortfolioAppReady() {
  final eventConstructor = globalContext['Event'] as JSFunction;
  final readyEvent = eventConstructor.callAsConstructor<JSObject>(
    'portfolio-app-ready'.toJS,
  );

  globalContext.callMethod<JSAny?>('dispatchEvent'.toJS, readyEvent);
}
