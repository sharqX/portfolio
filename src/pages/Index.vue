  <template>
  <Layout>
    <transition name="fade" appear>
      <main class="mt-1 mb-14">
        <div class="contain flex flex-col gap-7">
          <h1 class="font-semibold text-4xl">
            Hey <span class="wave" @click="startAnimation">👋</span>, I'm Sharique
          </h1>
          <p class="text-dimGrey leading-8">
          A <span class="text-border">DevOps</span> enthusiast passionate about automating deployments, managing cloud infrastructure, 
          and optimizing system reliability.I have hands-on experience with AWS, Kubernetes, Terraform, and CI/CD pipelines. 
          I love solving complex infrastructure challenges and continuously improving system performance.            
          </p>

          <div class="flex items-center gap-5 text-dimGrey">
            <p>Find me on:</p>

            <a href="https://linkedin.com/in/shariquerahman" target="_blank">
                <app-icon icon="fab fa-linkedin" size="lg"></app-icon>
            </a>

            <a href="https://github.com/sharqX/" target="_blank">
              <app-icon icon="fab fa-github" size="lg"></app-icon>
            </a>

            <a href="https://x.com/zarar_sharique" target="_blank">
              <app-icon icon="fab fa-x-twitter" size="lg"></app-icon>
            </a>

            <a
              href="https://discord.gg/PFGd5NsjbE"
              target="_blank"
            >
              <app-icon icon="fab fa-discord" size="lg"></app-icon>
            </a>

            <a href="mailto:rsharique24@gmail.com">
              <app-icon icon="at" size="lg"></app-icon>
            </a>
          </div>
        </div>

        <!-- Article List Section -->
        <div class="contain mt-16 flex flex-col gap-3 font-semibold">
          <h2 class="text-xl font-semibold">Projects</h2>
          <div class="flex flex-col gap-3">
            <article class="flex md:flex-row flex-col md:items-center items-start md:gap-10 gap-0 md:pb-3 pb-5">
              <p class="text-dimGreyAlt">10 Oct 2024</p>
              <a href="https://shariques.notion.site/Microservices-Application-11479f1ca8e48093b458db91397835d9" class="text-dimGrey decoration-cuppy underline underline-offset-4">
                Stan's Robot Shop
              </a>
            </article>
            
            <article class="flex md:flex-row flex-col md:items-center items-start md:gap-10 gap-0 md:pb-3 pb-5">
              <p class="text-dimGreyAlt">08 Aug 2024</p>
              <a href="https://shariques.notion.site/MERN-Deployment-a1b0904b3c954b64a381a666854e429a" class="text-dimGrey decoration-cuppy underline underline-offset-4">
                Three-tier Web Application
              </a>
            </article>
            
          </div>
        </div>

        <!-- Work Experience Section -->
        <div class="contain mt-16 flex flex-col gap-3">
          <h2 class="text-xl font-semibold">Work Highlight</h2>
          <tabs :mode="mode">
            <tab title="PearlThoughts" position="DevOps Engineer Intern" company="PearlThoughts" companyURL="https://pearlthoughts.com/" :itemList="PearlThoughtsItemList"/>
          </tabs> 
        </div>

        <div class="contain mt-16" style="width: 100%; margin: 60px 0 0 0;">
          <div class="mb-5" style="margin: 0;">
            <div class="senja-embed" data-id="c852e66c-9a22-40c8-8a9f-8039ccc00a18" data-lazyload="false"></div>
          </div>
        </div>

        <!-- Technologies List Section -->
        <div class="contain mt-5">
          <div class="mb-5">
            <h2 class="text-xl font-semibold">Lets's Connect!</h2>
            <p class="mt-5">Feel free to reach out. Shoot me an <a href="rsharique24@gmail.com" class="decoration-cuppy underline underline-offset-4">email</a>.</p>
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
    title: "Home",
  },
  components: {
    Tab,
    Tabs
  },
  data () {
    return {
      mode: 'dark',
      PearlThoughtsItemList: [
        'Configured essential AWS components, including EC2, VPC, Security Groups, Application Load Balancer, and IAM Roles, to ensure secure and scalable deployment.',
        'Deployed a web application using Strapi and React on AWS ECS Fargate utilizing Terraform, implementing Infrastructure as Code (IaC) for efficient resource management.',
        'Utilized Docker to containerize the application and pushed the image to AWS ECR, reducing deployment time by 30%.',
        'Developed a CI/CD pipeline with GitHub Actions, achieving a 60% faster deployment process and a 20% increase in successful deployments.'
      ]
    }
  },
  mounted() {

    
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
