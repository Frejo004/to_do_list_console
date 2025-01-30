import 'package:to_do_list_console/to_do_list_console.dart' as to_do_list_console;
import 'dart:io';
import 'package:to_do_list_console/to_do_list_console.dart';

void main(List<String> arguments) {

  // print('Hello world: ${to_do_list_console.calculate()}!');
  Task task = Task("description", false);

  
  while (true) {
    print("\n--- To-Do List ---");
    print("1. Afficher les tâches");
    print("2. Ajouter une tâche");
    print("3. Marquer une tâche comme terminée");
    print("4. Supprimer une tâche");
    print("5. Quitter");
    print("Choisissez une option :");
    print("Que voulez-vous faire ?");

     String choix = stdin.readLineSync()!;

    switch (choix) {
      case '1':
        to_do_list_console.ToDoList().listTasks();
        break;
      case '2':
        print("Entrez la description de la tâche :");
        String description = stdin.readLineSync()!;
        to_do_list_console.ToDoList().addTask(description);
        break;
      case '3':
        print("Entrez le numéro de la tâche à marquer comme terminée :");
        int index = int.parse(stdin.readLineSync()!);
        to_do_list_console.ToDoList().markTaskAsDone(index);
        break;
      case '4':
        print("Entrez le numéro de la tâche à supprimer :");
        int index = int.parse(stdin.readLineSync()!);
        to_do_list_console.ToDoList().deleteTask(index);
        break;
      case '5':
        print("Au revoir !");
        return;
      default:
        print("Choix invalide");
    }
  }
}
