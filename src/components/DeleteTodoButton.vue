<template>
  <img v-on:click="clicked()" alt="delete" src="../assets/delete-button.png"/>
</template>

<script>
export default {
  name: 'DeleteTodoButton',
  methods: {
    clicked() {
      this.$emit('delete-this-todo');
    },
  },
};
</script>

<style scoped>
img {
  border-radius: 23%;
}
</style>
