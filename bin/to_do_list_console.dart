import 'dart:io';

import 'package:to_do_list_console/to_do_list_console.dart';

import 'to_do_list_console.dart' as to_do_list_console;
import 'package:to_do_list_console/to_do_list_console.dart' as to_do_list_console;

void main() {
  var toDoList = to_do_list_console.ToDoList();

  while (true) {
    print("Bienvenue dans votre liste de tâches !\n");
    print("1. Afficher les tâches");
    print("2. Ajouter une tâche");
    print("3. Modifier une tâche");
    print("4. Marquer une tâche comme terminée");
    print("5. Supprimer une tâche");
    print("6. Supprimer toutes les tâches");
    print("7. Quitter");
    print("Choisissez une option :\n");

    print("Que voulez-vous faire ?\n");

    int choix = int.parse(stdin.readLineSync()!);

    switch (choix) {
      case 1:
        toDoList.listTasks();
        break;
      case 2:
        print("Entrez la description de la tâche :");
        String? description = stdin.readLineSync();
        //Vérifier si la description n'est pas vide
        if (description != null && description.isNotEmpty && description.trim() != "") {
          toDoList.addTask(description);
        }
        else{
          print("La description ne peut pas être vide");
        }
        break;
      case 4:
        print("Entrez le numéro de la tâche à marquer comme terminée :");
        int index = int.parse(stdin.readLineSync()!);
        toDoList.markTaskAsDone(index);
        break;
      case 5:
        print("Entrez le numéro de la tâche à supprimer :");
        int index = int.parse(stdin.readLineSync()!);
        toDoList.deleteTask(index);
        break;
      case 7:
        return;
      default:
        print("Option invalide. Veuillez réessayer.");
    }
  }
}