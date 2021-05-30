import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/deal.dart';
import '../repository/firebase_repository.dart';

final dealsRepositoryProvider = Provider<DealsFirebaseRepository>((ref) {
  return DealsFirebaseRepository();
});

final dealsProvider =
    StateNotifierProvider<DealsNotifier, AsyncValue<List<Deal>>>(
        (ref) => DealsNotifier(ref.read));

final currentDealProvider = ScopedProvider<Deal>(null);

class DealsNotifier extends StateNotifier<AsyncValue<List<Deal>>> {
  DealsNotifier(this.read, [AsyncValue<List<Deal>>? deals])
      : super(deals ?? const AsyncValue.loading()) {
    _fetchDeals();
  }

  final Reader read;

  Future<void> _fetchDeals() async {
    final deals = await read(dealsRepositoryProvider).fetch();
    state = AsyncValue.data(deals);
    print(state.whenData((value) => value));
  }

  Future<void> add(Deal deal) async {
    final newDeal = await read(dealsRepositoryProvider).add(deal);
    state = state.whenData((deals) => deals..add(newDeal));
    print('--New deal added: $newDeal');
  }
}
