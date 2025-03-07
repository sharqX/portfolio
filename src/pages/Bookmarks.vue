<template>
    <Layout>
      <transition name="fade" appear>
        <main class="mt-1 mb-14">
          <div class="contain flex flex-col gap-7">
            <h1 class="font-semibold text-4xl">
              Bookmarks
            </h1>
              <p class="text-dimGrey leading-8">
                Explore my curated collection of intriguing articles and resources from around the web.
              </p>
          </div>
  
          <!-- Article List Section -->
          <div class="contain mt-16 flex flex-col gap-3">
            <div class="flex flex-col gap-3">
              <article class="flex md:flex-row flex-col md:items-center items-start md:gap-10 gap-0 md:pb-3 pb-5">
                <a href="https://www.kalzumeus.com/2011/10/28/dont-call-yourself-a-programmer/" class="text-dimGrey decoration-cuppy underline underline-offset-4">
                  Don't Call Yourself A Programmer, And Other Career Advice
                </a>
              </article>
              
              <article class="flex md:flex-row flex-col md:items-center items-start md:gap-10 gap-0 md:pb-3 pb-5">
                <a href="https://joshcollinsworth.com/blog/antiquated-react" class="text-dimGrey decoration-cuppy underline underline-offset-4">
                  Things you forgot (or never knew) because of React
                </a>
              </article>
            </div>
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
      title: "The DevOps Engineer♾️",
    },
    components: {
      Tab,
      Tabs
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
  