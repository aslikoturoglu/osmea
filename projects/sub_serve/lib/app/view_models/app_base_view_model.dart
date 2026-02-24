import 'package:masterfabric_core/masterfabric_core.dart';

abstract class AppBaseViewModel<TState>
    extends BaseViewModelHydratedCubit<TState> {
  AppBaseViewModel(super.initialState);
}
