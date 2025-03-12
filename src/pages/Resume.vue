<template>
    <Layout>
      <transition name="fade" appear>
        <main class="mt-1 mb-14">
          <div class="contain flex flex-col gap-7">
            <h1 class="font-semibold text-4xl">
              My Resume
            </h1>
              <p class="text-dimGrey leading-8">Here you can download my resume.</p>
          </div>
        </main>
      </transition>
    </Layout>
  </template>
  
  <script>
  import Tab from '../components/Tab.vue'
  import Tabs from '../components/Tabs.vue'
  import pdf from 'vue-pdf'
  export default {
    metaInfo: {
      title: "Resume",
    },
    components: {
      Tab,
      Tabs,
      pdf
    },
    data () {
      return {
        mode: 'dark'
      }
    },
    methods: {
      changeStyle () {
        if (this.mode === 'dark') {
          this.mode = 'light'
        } else {
          this.mode = 'dark'
        }
      }
    }
  };
  </script>
  