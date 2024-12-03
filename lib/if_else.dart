void main(dynamic candidates) {
  //
  for (int x = 0; x <= 10; x++) {
    print("hey");
  }
  for (int i = 0; i < candidates.length; i++) {
    var candidate = candidates[i];
    if (candidate.yearsExperience < 5) {
      continue;
    }
    candidate.interview();
  }
}
