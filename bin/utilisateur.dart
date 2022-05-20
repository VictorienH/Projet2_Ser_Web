import 'dart:io';
import 'ihmPrincipale.dart';

class Utilisateur {
  static Future<void> ajouterUtilisateur() async {
    String nom = IHMprincipale.saisieString("le nom d'utilisateur");
    String cmd = "pure-pw useradd $nom -u 120 -g 120 -d /home/user -m";
    Process p = await Process.start("bash", ["-c", cmd]);
    stdout.addStream(p.stdout);
    stderr.addStream(p.stderr);
    p.stdin.addStream(stdin);
  }

  static Future<void> ajouterUtilisateurV() async {
    String nom = IHMprincipale.saisieString("le nom d'utilisateur virtuel");
    String cmd = "add $nom";
    Process p = await Process.start("bash", ["-c", cmd]);
    stdout.addStream(p.stdout);
    stderr.addStream(p.stderr);
    p.stdin.addStream(stdin);
  }

// afficher les infos de l'utilisateur

  static Future<void> infoUtilisateur() async {
    String nom =
        IHMprincipale.saisieString("le nom d'utilisateur à obtenir les infos");
    String cmd = "pure-pw show $nom";
    Process p = await Process.start("bash", ["-c", cmd]);
    stdout.addStream(p.stdout);
    stderr.addStream(p.stderr);
    p.stdin.addStream(stdin);
    IHMprincipale.restartServeurFTP();
  }

  static Future<void> modifierUtilisateur() async {
    String cmd = "";
    Process p = await Process.start("bash", ["-c", cmd]);
    stdout.addStream(p.stdout);
    stderr.addStream(p.stderr);
    IHMprincipale.restartServeurFTP();
  }

  static Future<void> modifierMDP() async {
    String nom =
        IHMprincipale.saisieString("le nom d'utilisateur à mofifier le MDP");
    String cmd = "pure-pw passwd $nom";
    Process p = await Process.start("bash", ["-c", cmd]);
    stdout.addStream(p.stdout);
    stderr.addStream(p.stderr);
    p.stdin.addStream(stdin);
    IHMprincipale.restartServeurFTP();
  }

  static Future<void> supprimerUtilisateur() async {
    String nom = IHMprincipale.saisieString("le nom à supprimer");
    String cmd = "pure-pw userdel $nom";
    Process p = await Process.start("bash", ["-c", cmd]);
    stdout.addStream(p.stdout);
    stderr.addStream(p.stderr);
    IHMprincipale.restartServeurFTP();
  }

  static Future<void> supprimerUtilisateurs() async {
    String cmd = "";
    Process p = await Process.start("bash", ["-c", cmd]);
    stdout.addStream(p.stdout);
    stderr.addStream(p.stderr);
    IHMprincipale.restartServeurFTP();
  }

  static Future<void> afficherListeUtilisateur() async {
    String cmd = "pure-pw list";
    Process p = await Process.start("bash", ["-c", cmd]);
    stdout.addStream(p.stdout);
    stderr.addStream(p.stderr);
    IHMprincipale.restartServeurFTP();
  }

  static Future<void> afficherListeUtilisateurConnecte() async {
    String cmd = "pure-ftpwho";
    Process p = await Process.start("bash", ["-c", cmd]);
    stdout.addStream(p.stdout);
    stderr.addStream(p.stderr);
    IHMprincipale.restartServeurFTP();
  }

  static Future<void> ajoutDroitUtilisateur() async {
    String cmd = "";
    Process p = await Process.start("bash", ["-c", cmd]);
    stdout.addStream(p.stdout);
    stderr.addStream(p.stderr);
    p.stdin.addStream(stdin);
    IHMprincipale.restartServeurFTP();
  }
}
