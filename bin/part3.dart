enum AppState { loading, success, error, empty }

String getMessage(AppState state) {
  switch (state) {
    case AppState.loading:
      return 'Loading data... Please wait.';
    case AppState.success:
      return 'Operation completed successfully.';
    case AppState.error:
      return 'Something went wrong.';
    case AppState.empty:
      return 'No data available.';
  }
}

void runPart3() {
  final statesToShow = [AppState.loading, AppState.success, AppState.error];
  for (final state in statesToShow) {
    print('State: $state -> ${getMessage(state)}');
  }
}
