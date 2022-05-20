import 'dart:io';

class Config {
  static Future<void> installerPureFtp() async {
    String cmd = " apt install pure-ftpd";
    Process p = await Process.start("bash", ["-c", cmd]);
    stdout.addStream(p.stdout);
    stderr.addStream(p.stderr);
    p.stdin.addStream(stdin);
  }

  static Future<void> deinstallerPureFtp() async {
    String cmd = " apt purge pure-ftpd";
    Process p = await Process.start("bash", ["-c", cmd]);
    stdout.addStream(p.stdout);
    stderr.addStream(p.stderr);
    p.stdin.addStream(stdin);
  }

  static Future<void> miseAJourPureFtp() async {
    String cmd = " apt update";
    Process p = await Process.start("bash", ["-c", cmd]);
    stdout.addStream(p.stdout);
    stderr.addStream(p.stderr);
    p.stdin.addStream(stdin);
  }

  static Future<void> installerApache2() async {
    String cmd = " apt install apache2";
    Process p = await Process.start("bash", ["-c", cmd]);
    stdout.addStream(p.stdout);
    stderr.addStream(p.stderr);
    p.stdin.addStream(stdin);
  }

  static Future<void> deinstallerApache2() async {
    String cmd = " apt purge apache2";
    Process p = await Process.start("bash", ["-c", cmd]);
    stdout.addStream(p.stdout);
    stderr.addStream(p.stderr);
    p.stdin.addStream(stdin);
  }

  static Future<void> miseAJourApache2() async {
    String cmd = " apt update";
    Process p = await Process.start("bash", ["-c", cmd]);
    stdout.addStream(p.stdout);
    stderr.addStream(p.stderr);
    p.stdin.addStream(stdin);
  }
}
