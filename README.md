# featlink_app

Featlink mobile app Flutter project.

## Getting Started

Read this readme carefully

## Coding Rules (in french)

Ces règles ne sont pas difficiles à respecter et correspond au standard, donc si vous avez l'habitude de coder en respectant les standard alors il vous sera difficile de violer l'une des règles, toute PR qui ne respecte pas l'une de ces règle sera rejeté jusqu'à ce que l'auteur corrige

- 1. Respecter strictement les consignes du ticket et le design sur figma, si vous faite une suggestion c'est à votre risque (la PR peut être rejeté ai la suggestion n'est pas accepté et vous aurez perdu votre temps en plus du temps pour corriger la PR pour qu'elle soit enfin validé) <br /> <br />

- 2. Toute les screens se doivent se nommer en anglais et avec un `_screen.dart` à la fin, par exemple le fichier la page de Bienvenue se nome `welcome_screen.dart`, et la class `WelcomePage` si votre page a plusieurs sous composant alors

  - a- Créer un dossier de même nom que la page (sans .dart) pour placer votre page, par ex: lib/src/screens/welcome2_screen/welcome2_screen.dart <br />
  - b- Créer un dossier `widgets` pour mettre tout les sous composant de votre page (exemple voir: `lib/src/screens/welcome2_screen/widgets`) <br />
  - c- Si l'un des composant de votre page sera utilisé par d'autre page alors déplacer ce composant dans le dossier `lib/src/components` <br />
  - d- Vous avez un exmple avec la screen "welcome2_screen"
    <br /> <br />

- 3. Ne jamais mettre les texte en dure, utiliser la traduction (ajouter dans le fichier assets/i18n/fr.json, puis generer les clés grâce à la commande **./generate-locale_keys.bat** OU **./generate-locale_keys.sh** pour linux) et utiliser `LocalKeys.nom_de_la_cle.tr()` comme sur la page d'example WelcomeScreen <br /> <br />

- 4. Utiliser la classe `AppAssets` pour garder le chemin de tout les fichiers et appeler en suite `AppAssets` dans le code plutot que le chemin directement, un peu comme sur la page d'exemple (`WelcomeScreen`) avec le logo ET la classe `AppColors` autant que possible<br /> <br />

- 5. Re-utiliser les composant déjà existant, plutot que de créer la même version du composant qui existe déjà (PrimaryButton par exemple pour les bouttons et BottomGradiantBar pour la barre d'en bas sur la page welcome) <br /> <br />

- 6. Toujours mettre les screens dans `Scaffold` (voir exemple sur welcome_screen.dart) ET utilisez des StatelessWidget autant que possible, pas de StatefullWidget sauf s'il ya des animations ou des actions ou encore si on ne peut faire autrement <br /> <br />

- 7. PAS DE TAILLE FIXES DANS LE CODE POUR LES LARGUEUR (ou WIDTH en anglais), Utiliser les Row/Column/Grid etc pour structurer vos page et ne mettez pas des taille fixe pour calculer la place d'un élément, les tailles fixes, c'est pour les tailles des textes, des icons et la hauteur de certains élément <br /> <br />

- 8. A la fin de chaque SCREEN, veillez ajouter la screen dans le fichier "lib/src/all_screens.dart" en suivant le pattern que vous allez trouver (`'nom_du_fichier': () => MyScreen()`), cela permettra que votre screen soit testé automatiquement, sans cet ajout, le test unitaire va échouer parce qu'il ne saura pas comment instancier votre screen. Ce test unitaire nous permet de rapidement valider votre ticket <br /> <br />

- 9. Interdit de pusher un code avec une mauvaise analyse ou un test unitaire qui a échoué; le code sera formaté à chaque commit, analysé et testé à chaque push, si les test unitaire ou l'analyse échoue le push est annulé; Normalement l'éditeur va déjà vous indiquer avec les bleu et les rouge ce qui ne vas pas et si tout est corrigé, le push va passer normalement. Les rouges sont des erreurs et les bleues viole nos règles de lintage. <br />
     Si votre éditeur ne fait pas ça, installer l'extension Flutter votre VS Code <br /> <br />

- 10. Pour tester votre travail, changer le paramètre `home` de `MaterialApp` dans `FeatlinkApp` (lib/src/app.dart) et à la fin de votre travail, remettez WelcomeScreen là-bas, pour tester votre travail, lancer flutter sur le navigateur <br /> <br />

- 11. Pour chaque PR, voici ce qu'il faut:

  - a. Le nom de la PR c'est le format suivant **ticket-[NUM_TICKET]/[NOM_DE_LA_PAGE_OU_DU_TICKET_SLUGIFIE]**, exemple pour le ticket 10 qui est "#10 - La page de bienvene" le nom de la PR peut-être **ticket-10/welcome-page** (la partie après / est à votre choix mais la partie avant avec le numéro du ticket est obligatoire) le nom du ticket
  - b. Mettez le lien du ticket dans la description de la PR (OPTIONEL)
  - c. Mettez le lien de la PR en commentaire sur le ticket
  - d. Vous devez fournir des captures de la/les screens réalisés pour que le ticket soit validé rapidement, voici les conditions pour les 3 images pour chaque screen
    - **iPhone SE (375 x 667)** ou bien tout écran de téléphone **de MOINS de 700 px** en hauteur (height < 700px)
    - **Pixel 7 (412 x 915)** ou bien tout écran de téléphone **D'AU MOINS 700 px** en hauteur (height >= 700px)
    - **iPad Mini (768 x 1024)** ou bien tout écran de tablette **D'AU MOINS 700 px** en largeur (width >= 700px)
      Si le ticket n'est pas une screen, alors une seule capture suffira

- 12. Si votre PR respecte tout les points précédent alors je n'ai pas le droit de rejeter votre PR

## Assets

The `assets` directory houses images, fonts, and any other files you want to
include with your application.

The `assets/images` directory contains [resolution-aware
images](https://flutter.dev/docs/development/ui/assets-and-images#resolution-aware).

## Commands

- Generate localization keys

```sh
dart run easy_localization:generate -S assets/i18n -f keys -o lang_keys.g.dart
```

- Run app

#### On Edge

```sh
flutter run -d edge
```

#### On Chrome

```sh
flutter run -d chrome
```
