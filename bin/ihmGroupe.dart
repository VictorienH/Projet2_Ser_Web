import 'ihmPrincipale.dart';
import 'dart:io';
import 'groupe.dart';

class IHMGroupe {
  static Future<void> menuGroupe() async {
    int choix = -1;
    while (choix != 0) {
      print("+--------------------------------------------------+");
      print("|           Menu - Gestion Groupe                  |");
      print("|  1- Ajouter un groupe                            |");
      print("|  2- Modifier un groupe                           |");
      print("|  3- Supprimer un groupe                          |");
      print("|  4- Supprimer tous les groupes                   |");
      print("|  5- Afficher la liste des groupes                |");
      print("|  6- Ajouter des droits à un groupe               |");
      print("|  0- Quitter                                      |");
      print("+--------------------------------------------------+");
      choix = IHMprincipale.choixMenu(6);
      print("--------------------------------------------------");

      if (choix == 1) {
        await Groupe.ajouterGroupe();
      } else if (choix == 2) {
        await Groupe.modifierGroupe();
      } else if (choix == 3) {
        await Groupe.supprimerGroupe();
      } else if (choix == 4) {
        await Groupe.supprimerGroupes();
      } else if (choix == 5) {
        await Groupe.afficherListeGroupe();
      } else if (choix == 6) {
        await Groupe.ajoutDroitGroupe();
      }
    }
    print("Retour menu précédent.");
    print("--------------------------------------------------");
    await Future.delayed(Duration(seconds: 1));
  }
}
