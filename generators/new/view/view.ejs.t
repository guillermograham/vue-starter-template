---
to: "src/router/views/<%= h.changeCase.kebab(name) %>.vue"
---
<template>
  <Layout>
    <%= titleName %>
  </Layout>
</template>
<%
  const fileName = h.changeCase.kebab(name)
  const importName = h.changeCase.pascal(fileName)
  const titleName = h.changeCase.title(name)
%><script>
import Layout from '@layouts/main.vue'

export default {
  page: {
    title: '<%= titleName %>',
    meta: [{ name: 'description', content: 'The <%= titleName %> page.' }],
  },
  components: { Layout }
}
</script>

<%

if (useStyles) { %>
<style lang="scss" module>
@import '@design';
</style>
<% } %>
