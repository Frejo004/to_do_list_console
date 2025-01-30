import 'package:to_do_list_console/to_do_list_console.dart' as to_do_list_console;
import 'dart:io';

void main(List<String> arguments) {

  // print('Hello world: ${to_do_list_console.calculate()}!');

  while (true) {
    print("\n--- To-Do List ---");
    print("1. Afficher les tâches");
    print("2. Ajouter une tâche");
    print("3. Marquer une tâche comme terminée");
    print("4. Supprimer une tâche");
    print("5. Quitter");
    print("Choisissez une option :");

    var choix = int.parse("Que voulez-vous faire ?");

    switch (choix) {
      case 1:
        to_do_list_console.ToDoList().listTasks();
        break;
      case 2:
        print("Entrez la description de la tâche :");
        String description = stdin.readLineSync()!;
        to_do_list_console.ToDoList().addTask(description);
        break;
      case 3:
        // to_do_list_console.supprimerTache();
        break;
      case 4:
        // to_do_list_console.marquerTacheCommeFait();
        break;
      case 5:
        print("Au revoir !");
        return;
      default:
        print("Choix invalide");
    }
  }
}
