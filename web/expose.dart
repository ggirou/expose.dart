import 'dart:html';
import 'package:polymer/polymer.dart';

@CustomTag('x-expose')
class Expose extends PolymerElement {
  @observable
  List sections;
  
  @observable
  int hIndex = 1;

  @observable
  int vIndex;

  Expose.created(): super.created() {
    window.onKeyDown.listen(onDocumentKeyDown);
    sections = this.querySelectorAll("section");
  }
  
  onDocumentKeyDown(KeyboardEvent event) {
    switch(event.keyCode) {
      // p, page up
      case 80: case 33: navigatePrev(); break;
      // n, page down
      case 78: case 34: navigateNext(); break;
      // h, left
      case 72: case 37: navigateLeft(); break;
      // l, right
      case 76: case 39: navigateRight(); break;
      // k, up
      case 75: case 38: navigateUp(); break;
      // j, down
      case 74: case 40: navigateDown(); break;
//      // home
//      case 36: slide( 0 ); break;
//      // end
//      case 35: slide( Number.MAX_VALUE ); break;
//      // space
//      case 32: isOverview() ? deactivateOverview() : event.shiftKey ? navigatePrev() : navigateNext(); break;
//      // return
//      case 13: isOverview() ? deactivateOverview() : triggered = false; break;
//      // b, period, Logitech presenter tools "black screen" button
//      case 66: case 190: case 191: togglePause(); break;
//      // f
//      case 70: enterFullscreen(); break;
//      default:
//        triggered = false;
    }
  }
  
  navigatePrev() => print("navigatePrev");
  navigateNext() => print("navigateNext");
  navigateLeft() => hIndex--;
  navigateRight() => hIndex++;
  navigateUp() => print("navigateUp");
  navigateDown() => print("navigateDown");
}