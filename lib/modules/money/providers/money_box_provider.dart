import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/money_box.dart';
import '../repository/firebase_money_repository.dart';

final moneyRepositoryProvider = Provider<MoneyFirebaseRepository>((ref) {
  return MoneyFirebaseRepository();
});

final moneyBoxesProvider =
    StateNotifierProvider<MoneyBoxesNotifier, AsyncValue<List<MoneyBox>>>(
        (ref) => MoneyBoxesNotifier(ref.read));

final currentMoneyBoxProvider = ScopedProvider<MoneyBox>(null);

class MoneyBoxesNotifier extends StateNotifier<AsyncValue<List<MoneyBox>>> {
  MoneyBoxesNotifier(this.read, [AsyncValue<List<MoneyBox>>? moneyBoxes])
      : super(moneyBoxes ?? const AsyncValue.loading()) {
    _fetchMoneyBoxes();

}
 final Reader read;

 Future<void> _fetchMoneyBoxes() async {
    final moneyBoxes = await read(moneyRepositoryProvider).fetchMoneyBoxes();
    state = AsyncValue.data(moneyBoxes);
    print(state.whenData((value) => value));
  }

  Future<void> addMoneyBox(MoneyBox moneyBox) async {
    final newBox = await read(moneyRepositoryProvider).addMoneyBox(moneyBox);
    state = state.whenData((boxes) => boxes
      ..add(newBox));
      // ..sort((a, b) => (b.createdAt ?? DateTime(1900))
      //     .compareTo(a.createdAt ?? DateTime(1900))));
    print('--New Money box added: $newBox');
  }

}