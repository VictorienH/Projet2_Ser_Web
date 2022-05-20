import 'dart:io';
import 'ihmConfig.dart';
import 'ihmUtilisateur.dart';
import 'ihmGroupe.dart';

class IHMprincipale {
  static void titre() {
    print("");
    print("+----------------------------------------+");
    print("|             Bienvenue dans :           |");
    print("|      Le menu de gestion genérale       |");
    print("+----------------------------------------+");
    print("");
  }

  static void quitter() {
    print("Au revoir !");
  }

  // retourne un chiffre entre 0 et nbChoix pour les menus
  static int choixMenu(int nbChoix) {
    bool saisieValide = false;
    int i = -1;
    while (!saisieValide) {
      print("> Veuillez saisir une action (0-$nbChoix)");
      try {
        i = int.parse(stdin.readLineSync().toString());
        if (i >= 0 && i <= nbChoix) {
          saisieValide = true;
        } else {
          print("La saisie ne correspond à aucune action.");
        }
      } catch (e) {
        print("Erreur dans la saisie.");
      }
    }
    return i;
  }

  // retourne un boolean pour demande de confirmation
  static bool confirmation() {
    bool saisieValide = false;
    bool confirme = false;
    while (!saisieValide) {
      print("Confirmer vous l'action ? (o/n)");
      String reponse = stdin.readLineSync().toString();
      if (reponse.toLowerCase() == "o") {
        saisieValide = true;
        confirme = true;
      } else if (reponse.toLowerCase() == "n") {
        saisieValide = true;
        print("Annulation.");
      } else {
        print("Erreur dans la saisie.");
      }
    }
    return confirme;
  }

//permet de saisir un string
  static String saisieString(String sujet) {
    bool saisieValide = false;
    String s = "";
    while (!saisieValide) {
      print("> Veuillez saisir $sujet :");
      try {
        s = stdin.readLineSync().toString();
        saisieValide = true;
      } catch (e) {
        print("Erreur dans la saisie.");
      }
    }
    return s;
  }

//permet de saisir un int
  static int saisieInt(String sujet) {
    bool saisieValide = false;
    int i = -1;
    while (!saisieValide) {
      print("> Veuillez saisir $sujet :");
      try {
        i = int.parse(stdin.readLineSync().toString());
        saisieValide = true;
      } catch (e) {
        print("Erreur dans la saisie.");
      }
    }
    return i;
  }

  // methode qui met en attente le programme et attend une validation avec entré
  static void wait() {
    print("Appuyez sur entrer pour continuer ...");
    stdin.readLineSync();
  }

  // menu pour la gestion basic de la BDD
  static Future<void> menuSerFTP() async {
    int choix = -1;
    while (choix != 0) {
      print("+----------------------------------------------+");
      print("|             Menu - Gestion générale          |");
      print("|  1- Installation                             |");
      print("|  2- Gestion utilisateur                      |");
      print("|  3- Gestion groupe                           |");
      print("|  4- Contrôle de l'activité serveur           |");
      print("|  5- Réinitialisation du serveur              |");
      print("|  0- Quitter                                  |");
      print("+----------------------------------------------+");
      choix = IHMprincipale.choixMenu(5);
      print("--------------------------------------------------");

      if (choix == 1) {
        await IHMConfig.menuInstallation();
      } else if (choix == 2) {
        await IHMUtilisateur.menuUtilisateur();
      } else if (choix == 3) {
        await IHMGroupe.menuGroupe();
      } else if (choix == 4) {
        await IHMprincipale.menuControleserveur();
      } else if (choix == 5) {
        await IHMprincipale.resetServeur();
      }
    }
    print("Retour menu précédent.");
    print("--------------------------------------------------");
    await Future.delayed(Duration(seconds: 1));
  }

  static Future<void> menuControleserveur() async {
    String cmd = "";
    Process p = await Process.start("bash", ["-c", cmd]);
    stdout.addStream(p.stdout);
    stderr.addStream(p.stderr);
    p.stdin.addStream(stdin);
  }

  static Future<void> resetServeur() async {
    String cmd = "";
    Process p = await Process.start("bash", ["-c", cmd]);
    stdout.addStream(p.stdout);
    stderr.addStream(p.stderr);
    p.stdin.addStream(stdin);
  }

  static Future<void> restartServeurFTP() async {
    String cmd = "service pure-ftpd restart";
    Process p = await Process.start("bash", ["-c", cmd]);
    stdout.addStream(p.stdout);
    stderr.addStream(p.stderr);
  }
}
