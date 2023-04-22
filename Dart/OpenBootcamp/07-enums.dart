enum AppStatus {
  STOPPED,
  RUNNING
}

void main(List<String> args) {
  print(AppStatus.STOPPED);
  print("Switching app status from '" + AppStatus.STOPPED.toString() + "' to '" + AppStatus.RUNNING.toString() + "'");
  print(AppStatus.RUNNING);
  print("Done, quiting.");
  print(AppStatus.STOPPED);
}