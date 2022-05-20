import 'dart:io';
import 'ihmPrincipale.dart';

class Groupe {
  static Future<void> ajouterGroupe() async {
    String nom = IHMprincipale.saisieString("le nom du groupe");
    String cmd = "groupadd $nom";
    Process p = await Process.start("bash", ["-c", cmd]);
    stdout.addStream(p.stdout);
    stderr.addStream(p.stderr);
    IHMprincipale.restartServeurFTP();
  }

  static Future<void> modifierGroupe() async {
    String nom = IHMprincipale.saisieString("le nom du groupe à modifier");
    String cmd = "";
    Process p = await Process.start("bash", ["-c", cmd]);
    stdout.addStream(p.stdout);
    stderr.addStream(p.stderr);
    p.stdin.addStream(stdin);
    IHMprincipale.restartServeurFTP();
  }

  static Future<void> supprimerGroupe() async {
    String cmd = "";
    Process p = await Process.start("bash", ["-c", cmd]);
    stdout.addStream(p.stdout);
    stderr.addStream(p.stderr);
    p.stdin.addStream(stdin);
    IHMprincipale.restartServeurFTP();
  }

  static Future<void> supprimerGroupes() async {
    String cmd = "";
    Process p = await Process.start("bash", ["-c", cmd]);
    stdout.addStream(p.stdout);
    stderr.addStream(p.stderr);
    p.stdin.addStream(stdin);
    IHMprincipale.restartServeurFTP();
  }

  static Future<void> afficherListeGroupe() async {
    String cmd = "";
    Process p = await Process.start("bash", ["-c", cmd]);
    stdout.addStream(p.stdout);
    stderr.addStream(p.stderr);
    p.stdin.addStream(stdin);
    IHMprincipale.restartServeurFTP();
  }

  static Future<void> ajoutDroitGroupe() async {
    String cmd = "";
    Process p = await Process.start("bash", ["-c", cmd]);
    stdout.addStream(p.stdout);
    stderr.addStream(p.stderr);
    p.stdin.addStream(stdin);
    IHMprincipale.restartServeurFTP();
  }
}
