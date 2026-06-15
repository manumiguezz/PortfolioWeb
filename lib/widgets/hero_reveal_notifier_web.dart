import 'dart:js_interop';
import 'dart:js_interop_unsafe';

typedef HeroRevealListenerHandle = JSFunction;

bool isHeroRevealStarted() {
  final document = globalContext['document'] as JSObject?;
  final body = document?['body'] as JSObject?;
  final classList = body?['classList'] as JSObject?;

  return classList
          ?.callMethod<JSBoolean>(
            'contains'.toJS,
            'portfolio-reveal-active'.toJS,
          )
          .toDart ??
      false;
}

HeroRevealListenerHandle? addHeroRevealListener(void Function() onReveal) {
  void listener(JSAny event) {
    onReveal();
  }

  final jsListener = listener.toJS;
  globalContext.callMethod<JSAny?>(
    'addEventListener'.toJS,
    'portfolio-hero-reveal-start'.toJS,
    jsListener,
  );
  return jsListener;
}

void removeHeroRevealListener(HeroRevealListenerHandle? handle) {
  if (handle == null) {
    return;
  }

  globalContext.callMethod<JSAny?>(
    'removeEventListener'.toJS,
    'portfolio-hero-reveal-start'.toJS,
    handle,
  );
}
