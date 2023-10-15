double getMedianFromDoubleList(List<double> data) {
  data.sort();
  double i = 0;
  int a = 0;
  int b = 0;

  if (data.length % 2 != 0) {
    return data[data.length ~/ 2];
  } else {
    a = (data.length ~/ 2) - 1;
    b = data.length ~/ 2;
    i = (data[a] + data[b]) / 2;
    return i;
  }
}

double getSimpleAverageFromDoubleList(List<double> data) {
  double sum = 0;
  for (double i in data) {
    sum += i;
  }
  return sum / data.length;
}

double getMaxFromDoubleList(List<double> data) {
  double result = data[0];
  for (var i in data) {
    if (result < i) result = i;
  }
  return result;
}

double getMinFromDoubleList(List<double> data) {
  double result = data[0];
  for (var i in data) {
    if (result > i) result = i;
  }
  return result;
}
