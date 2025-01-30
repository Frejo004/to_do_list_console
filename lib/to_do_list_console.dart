
int calculate() {
  return 6 * 7;
}

// la classe Task pour représenter une tâche
class Task {
  String Description;
  bool isDone;

  Task(this.Description, this.isDone);

  @override
  String toString() {
    String etat = isDone ? "faite" : "non faite";

    return "$Description ($etat)";
}
}


// la classe ToDoList pour gérer toutes les méthodes de notre application
class ToDoList {


  //Ajouter une tâche

  void ajouterTache(String taches) {
    print("Entrez la tâche à ajouter : ");
    taches.add(taches);
  }
}

extension on String {
  void add(String taches) {}
}
