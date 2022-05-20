import 'dart:io';
import 'ihmConfig.dart';
import 'ihmPrincipale.dart';
import 'utilisateur.dart';

class IHMUtilisateur {
  static Future<void> menuUtilisateur() async {
    int choix = -1;

    while (choix != 0) {
      print("+--------------------------------------------------+");
      print("|           Menu - Gestion Utilisateur              |");
      print("|  1- Ajouter un utilisateur                        |");
      print("|  2- Ajouter un utilisateur virtuel                |");
      print("|  3- Afficher informations utilisateur virtuel     |");
      print("|  4- Modifier un utilisateur                       |");
      print("|  5- Supprimer un utilisateur                      |");
      print("|  6- Supprimer tous les utilisateurs               |");
      print("|  7- Afficher la liste des utilisateurs            |");
      print("|  8- Ajouter des droits à un utilisateur           |");
      print("|  0- Quitter                                       |");
      print("+--------------------------------------------------+");
      choix = IHMprincipale.choixMenu(8);
      print("--------------------------------------------------");

      if (choix == 1) {
        Utilisateur.ajouterUtilisateur();
      } else if (choix == 2) {
        Utilisateur.ajouterUtilisateurV();
      } else if (choix == 3) {
        Utilisateur.infoUtilisateur();
      } else if (choix == 4) {
        Utilisateur.modifierUtilisateur();
      } else if (choix == 5) {
        Utilisateur.supprimerUtilisateur();
      } else if (choix == 6) {
        Utilisateur.supprimerUtilisateurs();
      } else if (choix == 7) {
        Utilisateur.afficherListeUtilisateur();
      } else if (choix == 8) {
        Utilisateur.ajoutDroitUtilisateur();
      }
    }
    print("Retour menu précédent.");
    print("--------------------------------------------------");
    await Future.delayed(Duration(seconds: 1));
  }
}
