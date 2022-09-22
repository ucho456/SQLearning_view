<template>
  <h1>{{ message }}</h1>
</template>

<script lang="ts">
import { defineComponent, ref } from 'vue'

export default defineComponent({
  props: {
    msg: {
      type: String,
      required: true
    }
  },
  setup(props) {
    const count = ref(0)

    return {
      count,
      message: props.msg
    }
  }
})
</script>
