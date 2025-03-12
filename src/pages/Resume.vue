<template>
    <Layout>
      <transition name="fade" appear>
        <main class="mt-1 mb-14">
          <div class="contain flex flex-col gap-7">
            <h1 class="font-semibold text-4xl">
              My Resume
            </h1>
              <!-- <p class="text-dimGrey leading-8">Here you can download my resume.</p> -->
              <iframe src="https://drive.google.com/file/d/1Lkty0SIltRG8WMyybhFn4ZKok_IHkqNH/preview" width="1000" height="1000"/> 
          </div>
        </main>
      </transition>
    </Layout>
  </template>
  
  <script>
  import Tab from '../components/Tab.vue'
  import Tabs from '../components/Tabs.vue'
  export default {
    metaInfo: {
      title: "Resume",
    },
    components: {
      Tab,
      Tabs,
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
  