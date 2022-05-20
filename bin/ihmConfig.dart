import 'ihmPrincipale.dart';
import 'config.dart';

class IHMConfig {
  static Future<void> menuInstallation() async {
    int choix = -1;
    while (choix != 0) {
      print("+-----------------------------------------+");
      print("|           Menu - Installation           |");
      print("|  1- Installer Pure-ftpd                 |");
      print("|  2- Mettre à jour Pure-ftpd             |");
      print("|  3- Désinstaller Pure-ftpd              |");
      print("|  0- Quitter                             |");
      print("+-----------------------------------------+");
      choix = IHMprincipale.choixMenu(3);
      print("--------------------------------------------------");

      if (choix == 1) {
        await Config.installerPureFtp();
      } else if (choix == 2) {
        await Config.miseAJourPureFtp();
      } else if (choix == 3) {
        await Config.deinstallerPureFtp();
      }
    }
    print("Retour menu précédent.");
    print("--------------------------------------------------");
    await Future.delayed(Duration(seconds: 1));
  }
}
