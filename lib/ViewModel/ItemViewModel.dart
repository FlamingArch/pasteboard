import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:pasteboard/Model/ItemModel.dart';

class ItemsViewModel with ChangeNotifier {
  List<Item> _items = [];

  List<Item> get items => _items;

  var _customAddText = "";

  String get customAddText => _customAddText;

  set customAddText(val) {
    _customAddText = val;
    notifyListeners();
  }

  void addCustomItem() {
    _items.add(Item(text: _customAddText));
    notifyListeners();
  }

  void removeItem(Item item) {
    _items.remove(item);
    notifyListeners();
  }

  void addItem() async {
    var item = await Clipboard.getData('text/plain');
    if (item != null) {
      items.add(Item(text: item.text!));
    }
    notifyListeners();
  }
}
