<template>
  <div id="container">
    <h1>{{ todo.caption }}</h1>
    <DeleteTodoButton @delete-this-todo="deleteThisTodo()" class="delete-todo-button" />
  </div>
</template>

<script>
import DeleteTodoButton from './DeleteTodoButton.vue';

export default {
  name: 'Todo',
  components: {
    DeleteTodoButton,
  },
  props: ['todo'],
  methods: {
    deleteThisTodo() {
      this.$emit('delete-todo', this.todo.id);
    },
  },
};
</script>

<style scoped>
  #container{
    background-color: #606060;
    color: #f5f5f5;
    padding: 10px;
    margin-top: 20px;
    height: 60px;
  }
  .delete-todo-button {
    float: right;
    margin-right: 20px;
    display: inline;
    height: 40px;
  }
  h1 {
    display: inline;
    word-break: break-word;
  }
</style>
