import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mobx/mobx.dart';
import 'package:todomobx/models/contas.dart';

part 'list_store.g.dart';

class ListStore = _ListStore with _$ListStore;

abstract class _ListStore with Store {


  @observable
  String newTodoTitle = '';

  @action
  void setNewTitle(String value) => newTodoTitle = value;

  @computed
  bool get isFormValid => newTodoTitle.isNotEmpty;

  @observable
  ObservableList<String> todoList = ObservableList<String>();

  @action
  void addTodo(){
    todoList.add(newTodoTitle);
  }

}