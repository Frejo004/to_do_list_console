
int calculate() {
  return 6 * 7;
}

// la classe Task pour représenter une tâche
class Task {
  String description;
  bool isDone;

  Task(this.description, this.isDone);

  @override
  String toString() {
    String etat = isDone ? "faite" : "non faite";

    return "$description ($etat)";
}
}


// la classe ToDoList pour gérer toutes les méthodes de notre application
class ToDoList {
  
  List<Task> taches = [];

  //Ajouter une tâche
    void addTask(String description) {
    Task task = Task(description, false);
    taches.add(task);
    print("Tâche ajoutée : $description");
    listTasks();
  }

  //Lister les tâches
  void listTasks(){
    print("Liste des tâches efféctuées :");
    //Vérifier si la liste est vide+++
    if (taches.isEmpty) {
      print("Aucune tâche n'a été ajoutée");
    } else {
      for (int i = 0; i < taches.length; i++) {
        String status = taches[i].isDone ? "terminée" : "en cours";
        print("$i. ${taches[i].description} - $status");
      }
    }
  }

  //Marquer une tâche comme terminée
  void markTaskAsDone( int index) {
    //Vérifier si l'index est valide
    if (index < 0 || index >= taches.length) {
      print("La tâche n'existe pas");
    } else {
      //Marquer la tâche comme terminée
      taches[index].isDone = true;
      print("Tâche marquée comme terminée : ${taches[index].description}");
    }
    listTasks();
  }

  //Supprimer une tâche
  void deleteTask(int index) {
    if (index < 0 || index >= taches.length) {
      print("La tâche n'existe pas");
    } else {
      taches.removeAt(index);
      print("Tâche supprimée");
  }
  listTasks();
  }

  //modiifier une tâche
  void modifTask(int index, String description) {
    if (index < 0 || index >= taches.length) {
      print("La tâche n'existe pas");
    } else {
      taches[index].description = description;
      print("Tâche modifiée");
    }
    listTasks();
  }

  //Supprimer toutes les tâches
  void deleteAllTasks() {
    taches.clear();
    print("Toutes les tâches ont été supprimées");
    listTasks();
  }
}