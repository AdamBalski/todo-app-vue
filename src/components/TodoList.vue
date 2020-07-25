<template>
  <div>
    <div v-for="todo in todos" :key="todo.id">
      <Todo :todo="todo" @delete-todo="deleteTodo" />
    </div>
    <h6>next id: {{ nextId }}</h6>
  </div>
</template>

<script>
import Todo from './Todo.vue';

export default {
  name: 'TodoList',
  components: {
    Todo,
  },
  data() {
    return {
      todos: [],
      nextId: 0,
    };
  },
  methods: {
    deleteTodo(id) {
      // Deletes those todos with id equal to parameter
      this.todos = this.todos.filter((todo) => todo.id !== id);
    },
    addTodo(caption) {
      this.todos.push({
        id: this.nextId,
        caption,
      });
      this.nextId += 1;
    },
  },
};
</script>

<style scoped>
</style>
