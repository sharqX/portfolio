<template>
  <Layout>
    <transition name="fade" appear>
      <main class="mt-1 mb-14">
        <div class="contain flex flex-col gap-7">
          <h1 class="font-semibold text-4xl">
            Hey <span class="wave" @click="startAnimation">👋</span>, I'm Jay
          </h1>
          <p class="text-dimGrey leading-8">
            I'm a Backend and Cloud Engineer who thrives to crafte solutions that are both simple and elegant. 
            I leverage a diverse array of technologies and tools (including AI) to solve the problem at hand.
            I have worked with many teams, small and large, across the globe to solve some of the most complex challenges in tech.
            I'm a <span class="text-border">10x Engineer</span> who is on the journey to set new benchmarks of excellence!
            My email is:
            
          </p>
          <Email :loopMessage="true" />
          <div class="flex items-center gap-5 text-dimGrey">
            <p>Also on:</p>

            <a href="https://www.linkedin.com/in/jbhv12" target="_blank">
                <app-icon icon="fab fa-linkedin" size="lg"></app-icon>
            </a>

            <a href="https://github.com/jbhv12" target="_blank">
              <app-icon icon="fab fa-github" size="lg"></app-icon>
            </a>

            <a href="https://twitter.com/jbhv12" target="_blank">
              <app-icon icon="fab fa-twitter" size="lg"></app-icon>
            </a>

            <a
              href="https://discordapp.com/users/apesnape"
              target="_blank"
            >
              <app-icon icon="fab fa-discord" size="lg"></app-icon>
            </a>

            <a href="mailto:dev.adewale@gmail.com">
              <app-icon icon="at" size="lg"></app-icon>
            </a>
          </div>
        </div>

        <!-- Article List Section -->
        <div class="contain mt-16 flex flex-col gap-3">
          <a href="https://dev.to/jbhv12" target="_blank" class="font-semibold text-xl">
            Posts
            <app-icon class="text-dimGrey" icon="link" size="sm"></app-icon>
          </a>
          <div class="flex flex-col gap-3">
            <article class="flex md:flex-row flex-col md:items-center items-start md:gap-10 gap-0 md:pb-3 pb-5">
              <p class="text-dimGreyAlt">09 Feb 2024</p>
              <a href="https://dev.to/jbhv12/oauth-terms-explained-in-one-sentence-2all" class="text-dimGrey decoration-cuppy underline underline-offset-4">
                OAuth Terms Explained in One Sentence
              </a>
            </article>
            
            <article class="flex md:flex-row flex-col md:items-center items-start md:gap-10 gap-0 md:pb-3 pb-5">
              <p class="text-dimGreyAlt">09 Feb 2024</p>
              <a href="https://dev.to/jbhv12/red-jingles-a-holiday-theme-based-ai-chatbot-5fl8" class="text-dimGrey decoration-cuppy underline underline-offset-4">
                Scaling Cheer: A Deep Dive into the Architecture of Red Jingles AI Chatbot
              </a>
            </article>
          </div>
        </div>

        <!-- Work Experience Section -->
        <div class="contain mt-16 flex flex-col gap-3">
          <h2 class="text-xl font-semibold">Work Highlights</h2>
          <tabs :mode="mode">
            <tab title="tab title" position="engg" company="qad" companyURL="ff" :itemList="itemList"/>
          </tabs>


<div style="margin-top: 10px; align-self: flex-start; display: flex; align-items: flex-end;">
  <button style="background-color: #2BBC89;
                 border: none;
                 color: white;
                 padding: 10px 20px;
                 text-align: center;
                 text-decoration: none;
                 font-size: 16px;
                 cursor: pointer;">Download Full CV
  </button>   

  <span style="display: none; margin-left: 10px;
               font-size: 12px;
               color: #2BBC89; 
               position: relative;
               bottom: 2px;
               line-height: 1;
               font-size: 10px;">Know more
  </span>
</div>



  
        </div>


        <!-- Technologies List Section -->
        <div class="contain mt-16">
          <div class="mb-5">
            <h2 class="text-xl font-semibold">Technologies</h2>
            <p class="mt-5">Here's a list of my tech stacks 👇:</p>
          </div>

          <div
            class="text-dimGrey flex flex-col gap-5 md:leading-none leading-8"
          >
            <p>
              <app-icon class="pr-2" icon="fab fa-js" size="lg"></app-icon>
              <span class="decoration-cuppy underline underline-offset-4"
                >JavaScript/TypeScript:</span
              >
              A scripting language for web page interactivity
            </p>

            <p>
              <app-icon class="pr-2" icon="fab fa-css3" size="lg"></app-icon>
              <span class="decoration-cuppy underline underline-offset-4"
                >SCSS/Tailwind CSS:</span
              >
              To beautify web pages
            </p>

            <p>
              <app-icon class="pr-2" icon="fab fa-vuejs" size="lg"></app-icon>
              <span class="decoration-cuppy underline underline-offset-4"
                >Vue/Nuxt:</span
              >
              An advanced MVVM front-end framework
            </p>

            <p>
              <app-icon class="pr-2" icon="fab fa-node" size="lg"></app-icon>
              <span class="decoration-cuppy underline underline-offset-4"
                >Node:</span
              >
              A cross-platfom open source server environment
            </p>

            <p>
              <app-icon class="pr-2" icon="fab fa-golang" size="lg"></app-icon>
              <span class="decoration-cuppy underline underline-offset-4"
                >Go:</span
              >
              A statically typed and compiled language for backend
            </p>

            <p>
              <app-icon class="pr-2" icon="database" size="lg"></app-icon>
              <span class="decoration-cuppy underline underline-offset-4"
                >MongoDB:</span
              >
              A document database that stores data in BSON format
            </p>
          </div>
        </div>
      </main>
    </transition>
  </Layout>
</template>

<script>
import Tab from '../components/Tab.vue'
import Tabs from '../components/Tabs.vue'
import Email from '../components/Email.vue'
export default {
  metaInfo: {
    title: "Full-Stack Dev 🤹",
  },
  components: {
    Tab,
    Tabs,
    Email
  },
  data () {
    return {
      mode: 'dark',
      itemList: ['Item 1', 'Item 2', 'Item 3'],
    }
  },
  methods: {
    changeStyle () {
      if (this.mode === 'dark') {
        this.mode = 'light'
      } else {
        this.mode = 'dark'
      }
    },
    startAnimation() {
      this.isAnimating = true;
      setTimeout(() => {
        this.isAnimating = false;
      }, 1700); 
    }
  }
};
</script>

<style>
.wave {
  animation-name: wave-animation;
  animation-duration: 2.5s;
  transform-origin: 70% 70%;
  display: inline-block;
}

@keyframes wave-animation {
    0% { transform: rotate( 0.0deg) }
   10% { transform: rotate(14.0deg) }
   20% { transform: rotate(-8.0deg) }
   30% { transform: rotate(14.0deg) }
   40% { transform: rotate(-4.0deg) }
   50% { transform: rotate(10.0deg) }
   60% { transform: rotate( 0.0deg) }
  100% { transform: rotate( 0.0deg) }
}

.wave:hover {
  animation-play-state: running;
}

.wave.running {
  animation-play-state: running;
}
</style>

<page-query>
query {
  posts: allArticles(perPage: 3) {
    edges {
      node {
        id
        title
        path
        date
      }
    }
  }
}
</page-query>
