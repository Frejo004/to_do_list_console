import 'package:to_do_list_console/to_do_list_console.dart' as to_do_list_console;

void main(List<String> arguments, String taches) {

  // print('Hello world: ${to_do_list_console.calculate()}!');

  while (true) {
    print("Le menu de notre application");
    print("1. Ajouter une tâche");
    print("2. Lister les tâches");
    print("3. Supprimer une tâche");
    print("4. Marquer une tâche comme faite");
    print("5. Quitter");

    var choix = int.parse("Que voulez-vous faire ?");

    switch (choix) {
      case 1:
        to_do_list_console.ToDoList().ajouterTache(taches);
        break;
      case 2:
        
        break;
      case 3:
        
        break;
      case 4:
        
        break;
      case 5:
        print("Au revoir !");
        return;
      default:
        print("Choix invalide");
    }
  }
}
