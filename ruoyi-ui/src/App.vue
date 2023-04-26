<template>
  <div id="app">
    <router-view />
    <theme-picker />
  </div>
</template>

<script>
  import ThemePicker from '@/components/ThemePicker'
  import { listTitle } from '@/api/scores/titleName'
  import Cookies from 'js-cookie'

  export default {
  name: "App",
  components: { ThemePicker },
    metaInfo() {
        return {
            title: this.$store.state.settings.dynamicTitle && this.$store.state.settings.title,
            titleTemplate: title => {
              listTitle().then(response => {
                if (undefined !== response.data.titleName && null !== response.data.titleName && "" !== response.data.titleName){
                  localStorage.setItem("title",response.data.titleName);
                  document.title = response.data.titleName;
                  return response.data.titleName;
                } else {
                  return title ? `${title} - ${process.env.VUE_APP_TITLE}` : process.env.VUE_APP_TITLE
                }
              });
            }
        }
    }
};
</script>
<style scoped>
#app .theme-picker {
  display: none;
}
</style>
