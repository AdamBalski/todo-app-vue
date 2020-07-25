<template>
  <div>
    <label for="todo-input">Enter your todo and hit enter!!!</label>  <div class="break"></div>
    <input id="todo-input" type="text" placeholder="Todo"
           v-model="caption" @keyup.enter="onEnter()" />
  </div>
</template>

<script>
export default {
  name: 'AddTodo.vue',
  data() {
    return {
      caption: '',
    };
  },
  methods: {
    onEnter() {
      this.caption = this.caption.trim();
      if (this.caption !== '') {
        this.$emit('add-todo', this.caption);
      }
      this.caption = '';
    },
  },
};
</script>

<style scoped>
.break {
  height: 15px;
}
input {
  /* BORDER */
  width: 23%;
  min-width: 220px;
  height: 25px;
  border: black solid 3px;
  border-radius: 4px;

  /* TEXT */
  color: black;
  font-weight: bolder;
  font-size: 150%;
}
</style>
