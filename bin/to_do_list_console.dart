import 'dart:io';

import 'package:to_do_list_console/to_do_list_console.dart';

import 'to_do_list_console.dart' as to_do_list_console;
import 'package:to_do_list_console/to_do_list_console.dart' as to_do_list_console;

void main() {
  var toDoList = to_do_list_console.ToDoList();

  while (true) {
    print("1. Afficher les tâches");
    print("2. Ajouter une tâche");
    print("3. Marquer une tâche comme terminée");
    print("4. Supprimer une tâche");
    print("5. Quitter");
    print("Choisissez une option :");
    print("Que voulez-vous faire ?");

    int choix = int.parse(stdin.readLineSync()!);

    switch (choix) {
      case 1:
        toDoList.listTasks();
        break;
      case 2:
        print("Entrez la description de la tâche :");
        String? description = stdin.readLineSync();
        toDoList.addTask(description!);
        break;
      case 3:
        print("Entrez le numéro de la tâche à marquer comme terminée :");
        int index = int.parse(stdin.readLineSync()!);
        toDoList.markTaskAsDone(index);
        break;
      case 4:
        print("Entrez le numéro de la tâche à supprimer :");
        int index = int.parse(stdin.readLineSync()!);
        toDoList.deleteTask(index);
        break;
      case 5:
        return;
      default:
        print("Option invalide. Veuillez réessayer.");
    }
  }
}