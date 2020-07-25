<template>
  <div>
    <TodoList ref="list" />
    <AddTodo @add-todo="addTodo" />
  </div>
</template>

<script>
import TodoList from './TodoList.vue';
import AddTodo from './AddTodo.vue';

export default {
  name: 'TodoManagementComponent',
  components: {
    TodoList,
    AddTodo,
  },
  methods: {
    addTodo(caption) {
      this.$refs.list.addTodo(caption);
    },
  },
};
</script>

<style scoped>
</style>
