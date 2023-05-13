<template>

</template>

<script>
  import { listExams, getExams, delExams, addExams, updateExams, getExamsEnables, statisticExams, mixScores } from "@/api/examination/exams";
  import { addLine, getLine, listLine, updateLine } from '@/api/scores/line'
  export default {
    name: 'examSave'
  }
</script>

<style scoped>

</style>
