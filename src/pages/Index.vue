  <template>
    <Layout>
      <transition name="fade" appear>
        <main class="mt-1 mb-14">
          <div class="contain flex flex-col gap-7">
            <h1 class="font-semibold text-4xl">
              Hey <span class="wave" @click="startAnimation">👋</span>, I'm Sharique.
            </h1>
            <p class="text-[#FFFFFF] leading-8">
              A <span class="text-border">DevOps</span> enthusiast passionate about automating deployments, managing
              cloud infrastructure,
              and optimizing system reliability.I have hands-on experience with AWS, Kubernetes, Terraform, and CI/CD
              pipelines.
              I love solving complex infrastructure challenges and continuously improving system performance.
            </p>
            <div class="gap-2">
              <a class="pill-outline">
                <div class="circle"></div>
                #OPENTOWORK
              </a>
            </div>
            <div class="flex items-center gap-5 text-[#FFFFFF]">
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

              <a href="https://discord.gg/PFGd5NsjbE" target="_blank">
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
                <p class="text-[#4D4C7D]">30 Mar 2025</p>
                <a href="https://shariques.notion.site/Portfolio-1bd79f1ca8e480c0a723e2cc1aff9784"
                  class="text-[#FFFFFF] decoration-[#6EACDA] underline underline-offset-4">
                  Porfolio
                </a>
              </article>

              <article class="flex md:flex-row flex-col md:items-center items-start md:gap-10 gap-0 md:pb-3 pb-5">
                <p class="text-[#4D4C7D]">10 Oct 2024</p>
                <a href="https://shariques.notion.site/Microservices-Application-11479f1ca8e48093b458db91397835d9"
                  class="text-[#FFFFFF] decoration-[#6EACDA] underline underline-offset-4">
                  Stan's Robot Shop
                </a>
              </article>

              <article class="flex md:flex-row flex-col md:items-center items-start md:gap-10 gap-0 md:pb-3 pb-5">
                <p class="text-[#4D4C7D]">08 Aug 2024</p>
                <a href="https://shariques.notion.site/MERN-Deployment-a1b0904b3c954b64a381a666854e429a"
                  class="text-[#FFFFFF] decoration-[#6EACDA] underline underline-offset-4">
                  Three-tier Web Application
                </a>
              </article>

            </div>
          </div>

          <!-- Work Experience Section -->
          <div class="contain mt-16 flex flex-col gap-3">
            <h2 class="text-xl font-semibold">Work Highlight</h2>
            <tabs :mode="mode">
              <tab title="PearlThoughts" position="DevOps Engineer Intern" company="PearlThoughts"
                companyURL="https://pearlthoughts.com/" :itemList="PearlThoughtsItemList" />

              <tab title="Assam Police Radio Organisation" position="Internship Trainee"
                company="Assam Police Radio Organisation (APRO)"
                companyURL="https://police.assam.gov.in/portlet-innerpage/assam-police-radio-organisation-apro"
                :itemList="APROItemList" />

              <tab title="OLatus" position="Intern" company="OLatus" companyURL="https://olatus.com/"
                :itemList="OLatusItemList" />

              <tab title="BSNL" position="Intern" company="BSNL" companyURL="https://www.bsnl.co.in/"
                :itemList="BSNLItemList" />
            </tabs>
          </div>

          <!-- Technologies List Section -->
          <div class="contain mt-16">
            <div class="mb-5">
              <h2 class="text-xl font-semibold">My Favourite Technologies!</h2>
            </div>

            <div class="text-[#FFFFFF] flex flex-col gap-5 md:leading-none leading-8">
              <p>
                <span class="decoration-[#6EACDA] underline underline-offset-4">Cloud Platform:</span>
                Amazon Web Services
                <app-icon class="pl-2" icon="fab fa-aws" size="lg"></app-icon>
              </p>

              <p class="flex items-center space-x-2">
                <span class="decoration-[#6EACDA] underline underline-offset-4">
                  Infrastructure as Code (IaC):
                </span>
                <span class="ml-2">Terraform</span>
                <svg xmlns="http://www.w3.org/2000/svg" width="21" height="24" viewBox="0 0 256 291">
                  <path fill="#fff" d="M176.485 188.994L256 143.127V51.249l-79.515 45.963z" />
                  <path fill="#fff"
                    d="m88.243 51.249l79.515 45.963v91.782L88.243 143.08M0 91.83l79.515 45.916v-91.83L0 0m88.243 244.994l79.515 45.915v-91.83l-79.515-45.915" />
                </svg>
              </p>

              <p class="flex items-center space-x-2">
                <span class="decoration-[#6EACDA] underline underline-offset-4">Containerization:</span>
                <span class="ml-2">Docker</span>
                <app-icon class="pr-2" icon="fab fa-docker" size="lg"></app-icon>
                Kubernetes
                <svg xmlns="http://www.w3.org/2000/svg" width="25" height="24" viewBox="0 0 256 249">
                  <path fill="#fff"
                    d="M82.085 244.934c-5.946 0-11.561-2.642-15.36-7.432L8.92 165.657c-3.799-4.79-5.285-10.9-3.799-16.847l20.645-89.682c1.321-5.946 5.285-10.736 10.736-13.378l83.571-39.97c2.643-1.32 5.616-1.981 8.589-1.981s5.945.66 8.588 1.982l83.572 39.804c5.45 2.642 9.414 7.432 10.735 13.378l20.645 89.682c1.322 5.946 0 12.057-3.798 16.847l-57.807 71.845c-3.799 4.624-9.414 7.432-15.36 7.432z" />
                  <path fill="#000"
                    d="M128.495 7.928c2.313 0 4.625.495 6.772 1.486l83.572 39.804c4.294 2.147 7.597 6.111 8.588 10.736l20.645 89.682c1.156 4.79 0 9.745-3.138 13.543l-57.806 71.846c-2.973 3.798-7.598 5.945-12.387 5.945H82.085c-4.79 0-9.414-2.147-12.387-5.945l-57.806-71.846c-2.973-3.798-4.13-8.753-3.138-13.543l20.645-89.682c1.156-4.79 4.294-8.754 8.588-10.736L121.56 9.25c2.147-.826 4.624-1.321 6.936-1.321m0-7.763c-3.468 0-6.936.826-10.24 2.312l-83.571 39.97c-6.607 3.138-11.231 8.918-12.883 16.02L1.156 148.15c-1.651 7.102 0 14.369 4.625 20.15l57.806 71.845c4.46 5.615 11.231 8.753 18.333 8.753h92.655c7.102 0 13.874-3.138 18.333-8.753l57.807-71.846c4.624-5.615 6.276-13.047 4.624-20.15l-20.645-89.682c-1.651-7.102-6.276-12.882-12.882-16.02L138.57 2.476C135.432.991 131.964.165 128.495.165" />
                  <path fill="#000"
                    d="M212.232 142.534q-.248 0 0 0h-.165c-.165 0-.33 0-.33-.165c-.33 0-.66-.165-.991-.165c-1.156-.165-2.147-.33-3.138-.33c-.496 0-.991 0-1.652-.166h-.165c-3.468-.33-6.276-.66-8.919-1.486c-1.156-.496-1.486-1.156-1.817-1.817c0-.165-.165-.165-.165-.33l-2.147-.66a65.3 65.3 0 0 0-1.156-23.289a68 68 0 0 0-9.249-21.636l1.652-1.486v-.33c0-.826.165-1.652.825-2.478c1.982-1.817 4.46-3.303 7.433-5.12c.495-.33.99-.495 1.486-.826c.991-.495 1.817-.99 2.808-1.651c.165-.165.495-.33.826-.66c.165-.166.33-.166.33-.331c2.312-1.982 2.808-5.285 1.156-7.433c-.826-1.156-2.312-1.816-3.799-1.816c-1.32 0-2.477.495-3.633 1.321l-.33.33c-.33.165-.496.496-.826.661c-.826.826-1.487 1.486-2.147 2.312c-.33.33-.66.826-1.156 1.156c-2.313 2.478-4.46 4.46-6.607 5.946q-.742.495-1.486.496c-.33 0-.661 0-.991-.166h-.33l-1.983 1.322c-2.147-2.312-4.459-4.294-6.771-6.276a65.96 65.96 0 0 0-34.519-13.709l-.165-2.147l-.33-.33c-.496-.496-1.156-.991-1.322-2.147c-.165-2.643.166-5.616.496-8.919v-.165c0-.496.165-1.156.33-1.652c.165-.99.33-1.982.496-3.138v-1.486c0-2.973-2.313-5.45-5.12-5.45c-1.322 0-2.643.66-3.634 1.651c-.99.991-1.486 2.312-1.486 3.799v1.321c0 1.156.165 2.147.495 3.138c.165.496.165.991.33 1.652v.165c.33 3.303.826 6.276.496 8.919c-.165 1.156-.826 1.651-1.321 2.147l-.33.33l-.166 2.147c-2.973.33-5.946.66-8.919 1.321c-12.717 2.808-23.948 9.25-32.701 18.498l-1.652-1.156h-.33c-.33 0-.661.165-.991.165q-.743 0-1.487-.495c-2.147-1.486-4.294-3.634-6.606-6.111c-.33-.33-.66-.826-1.156-1.156c-.661-.826-1.322-1.487-2.148-2.312c-.165-.166-.495-.33-.825-.661c-.165-.165-.33-.165-.33-.33a5.77 5.77 0 0 0-3.634-1.322c-1.487 0-2.973.661-3.799 1.817c-1.652 2.147-1.156 5.45 1.156 7.432c.165 0 .165.166.33.166c.33.165.496.495.826.66c.991.66 1.817 1.156 2.808 1.652c.496.165.991.495 1.487.826c2.972 1.816 5.45 3.303 7.432 5.12c.826.825.826 1.651.826 2.477v.33l1.651 1.487c-.33.495-.66.826-.826 1.321c-8.258 13.048-11.396 28.408-9.249 43.603l-2.147.66c0 .166-.165.166-.165.33c-.33.661-.826 1.322-1.817 1.817c-2.477.826-5.45 1.157-8.918 1.487h-.166c-.495 0-1.156 0-1.651.165c-.991 0-1.982.165-3.138.33c-.33 0-.66.166-.991.166c-.165 0-.33 0-.496.165c-2.973.66-4.79 3.468-4.294 6.11c.496 2.313 2.643 3.8 5.285 3.8c.496 0 .826 0 1.322-.166c.165 0 .33 0 .33-.165c.33 0 .66-.165.99-.165c1.157-.33 1.983-.66 2.974-1.156c.495-.165.99-.496 1.486-.66h.165c3.138-1.157 5.946-2.148 8.589-2.478h.33c.991 0 1.652.495 2.147.826c.165 0 .165.165.33.165l2.313-.33c3.964 12.221 11.561 23.122 21.636 31.05c2.312 1.816 4.624 3.303 7.102 4.79l-.991 2.146c0 .166.165.166.165.33c.33.661.66 1.487.33 2.643c-.99 2.478-2.477 4.955-4.294 7.763v.165c-.33.496-.66.826-.99 1.321c-.661.826-1.157 1.652-1.818 2.643c-.165.165-.33.495-.495.826c0 .165-.165.33-.165.33c-1.321 2.808-.33 5.946 2.147 7.102q.99.496 1.982.496c1.982 0 3.964-1.322 4.955-3.139c0-.165.165-.33.165-.33c.165-.33.33-.66.495-.826c.496-1.156.661-1.982.991-2.973l.496-1.486c1.156-3.303 1.982-5.946 3.468-8.258c.66-.991 1.487-1.156 2.147-1.487c.165 0 .165 0 .33-.165l1.157-2.147c7.267 2.808 15.195 4.294 23.122 4.294c4.79 0 9.745-.495 14.37-1.651a73 73 0 0 0 8.588-2.478l.99 1.817c.166 0 .166 0 .331.165c.826.165 1.486.496 2.147 1.487c1.321 2.312 2.312 5.12 3.468 8.258v.165l.496 1.486c.33.991.495 1.982.99 2.973c.166.33.331.496.496.826c0 .165.166.33.166.33c.99 1.982 2.972 3.139 4.954 3.139q.992 0 1.982-.496c1.156-.66 2.147-1.652 2.478-2.973c.33-1.321.33-2.808-.33-4.129c0-.165-.166-.165-.166-.33c-.165-.33-.33-.66-.495-.826c-.496-.991-1.156-1.817-1.817-2.643c-.33-.495-.66-.825-.99-1.32v-.166c-1.818-2.808-3.47-5.285-4.295-7.763c-.33-1.156 0-1.816.165-2.642c0-.165.165-.165.165-.33l-.826-1.982c8.754-5.12 16.186-12.388 21.802-21.306c2.973-4.625 5.285-9.745 6.936-14.865l1.982.33c.166 0 .166-.165.33-.165c.661-.33 1.157-.825 2.148-.825h.33c2.643.33 5.45 1.32 8.589 2.477h.165c.495.165.99.495 1.486.66c.991.496 1.817.826 2.973 1.157c.33 0 .66.165.991.165c.165 0 .33 0 .495.165c.496.165.826.165 1.322.165c2.477 0 4.624-1.651 5.285-3.798c0-1.982-1.817-4.625-4.79-5.45m-76.47-8.093l-7.267 3.469l-7.267-3.469l-1.816-7.762l4.954-6.276h8.093l4.955 6.276zm43.108-17.176a52.1 52.1 0 0 1 1.156 16.68l-25.27-7.266c-2.312-.66-3.633-2.973-3.138-5.285c.165-.661.496-1.322.991-1.817l19.985-18.003c2.807 4.625 4.954 9.91 6.276 15.69m-14.204-25.6l-21.636 15.36c-1.817 1.156-4.295.825-5.781-.991c-.495-.496-.66-1.157-.826-1.817l-1.486-26.922a50.13 50.13 0 0 1 29.729 14.37M116.769 78.12c1.817-.33 3.468-.66 5.285-.99l-1.486 26.425c-.165 2.312-1.982 4.294-4.46 4.294c-.66 0-1.486-.165-1.982-.495L92.16 91.665c6.772-6.772 15.195-11.397 24.609-13.544m-32.537 23.453l19.654 17.507c1.817 1.487 1.982 4.294.496 6.111c-.496.66-1.156 1.156-1.982 1.322l-25.6 7.432c-.991-11.231 1.486-22.627 7.432-32.372m-4.46 44.759l26.262-4.46c2.147-.165 4.129 1.322 4.624 3.469c.165.99.165 1.817-.165 2.643l-10.075 24.278c-9.249-5.946-16.681-15.03-20.645-25.93m60.285 32.867c-3.799.826-7.598 1.321-11.562 1.321c-5.78 0-11.396-.99-16.68-2.642l13.047-23.618c1.321-1.487 3.468-2.147 5.285-1.156a7 7 0 0 1 1.982 1.816l12.717 22.958c-1.486.495-3.138.826-4.79 1.321m32.206-22.957c-4.129 6.606-9.58 11.891-15.855 16.02l-10.405-24.94c-.496-1.981.33-4.128 2.312-5.12c.66-.33 1.486-.495 2.312-.495l26.426 4.46c-.991 3.633-2.643 6.937-4.79 10.075" />
                </svg>
              </p>

              <p class="flex items-center space-x-2">
                <span class="decoration-[#6EACDA] underline underline-offset-4">CI/CD:</span>
                <span class="ml-2">GitHub Actions</span>
                <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" viewBox="0 0 256 256">
                  <path fill="#fff"
                    d="M53.604 0c29.604 0 53.604 23.992 53.604 53.59c0 29.09-23.189 52.75-52.093 53.553c0 2.461.109 7.111 1.501 9.92c1.933 3.893 13.525 11.144 24.892 11.144h4.084c2.567-18.271 18.257-32.332 37.24-32.332c18.906 0 34.55 13.946 37.211 32.11h21.13c2.661-18.164 18.304-32.11 37.21-32.11c20.775 0 37.617 16.837 37.617 37.607s-16.842 37.606-37.617 37.606c-18.906 0-34.55-13.948-37.21-32.11h-21.129c-2.66 18.162-18.305 32.11-37.212 32.11c-18.87 0-34.494-13.893-37.199-32.007l-4.515.135c-7.435-.056-15.29-2.042-21.598-6.328c-1.72-1.169-3.415-2.397-5.182-3.56v2.441c-.01.79-.153 12.657-.164 25.833v2.79c.005 8.641.073 17.545.277 24.04c.446 14.246 12.034 25.745 24.822 28.436c1.663.35 4.52.394 6.321.238c2.571-18.264 18.26-32.32 37.238-32.32c20.774 0 37.616 16.838 37.616 37.607c0 20.77-16.842 37.607-37.616 37.607c-18.769 0-34.323-13.744-37.153-31.714h-3.254c-24.436-1.334-39.628-23.746-39.363-41.923c.334-22.877.082-45.764.079-68.646v-7.565C18.546 101.286 0 79.606 0 53.591C0 23.992 23.999 0 53.604 0m69.228 191.78c-14.701 0-26.62 11.915-26.62 26.613s11.919 26.614 26.62 26.614s26.62-11.915 26.62-26.614c0-14.698-11.918-26.614-26.62-26.614m0-84.912c-14.701 0-26.62 11.915-26.62 26.614c0 14.697 11.919 26.613 26.62 26.613s26.62-11.916 26.62-26.613c0-14.699-11.918-26.614-26.62-26.614m95.551 0c-14.702 0-26.62 11.915-26.62 26.614c0 14.697 11.918 26.613 26.62 26.613s26.621-11.916 26.621-26.613c0-14.699-11.918-26.614-26.62-26.614m15.161 15.408a5.496 5.496 0 0 1 .17 7.606l-.16.168l-16.31 16.345a5.5 5.5 0 0 1-7.576.198l-.172-.163l-7.985-7.86a5.496 5.496 0 0 1-.06-7.773a5.5 5.5 0 0 1 7.606-.22l.168.16l4.092 4.027l12.452-12.477a5.5 5.5 0 0 1 7.775-.01m-95.99-.08a5.497 5.497 0 0 1 .17 7.606l-.16.168l-16.31 16.344a5.5 5.5 0 0 1-7.576.198l-.172-.163l-7.985-7.86a5.498 5.498 0 0 1 7.546-7.992l.168.16l4.093 4.027l12.451-12.478a5.5 5.5 0 0 1 7.775-.01M53.604 10.993c-23.532 0-42.608 19.07-42.608 42.598c0 23.525 19.076 42.597 42.608 42.597s42.608-19.072 42.608-42.597c0-23.527-19.076-42.598-42.608-42.598M49.171 28.13A744 744 0 0 1 75.7 44.841c7.308 4.82 7.29 13.563-.1 18.394a609 609 0 0 1-27.058 16.712c-7.455 4.34-15.8-.65-16.002-9.344c-.13-5.602-.024-11.21-.032-16.817c-.006-5.454-.113-10.911.019-16.363c.222-9.248 8.736-14.066 16.643-9.293m-5.91 8.872v3.868l-.001 5.674l-.001 3.71v5.482c0 4.23.002 8.394.01 12.557c.003 1.96 1.023 1.88 2.343 1.063q11.408-7.071 22.827-14.127c1.258-.776 1.294-1.587.06-2.365c-8.154-5.139-16.318-10.26-25.238-15.862" />
                  <path fill="#fff"
                    d="M133.227 223.88a5.497 5.497 0 1 0 .001-10.996a5.497 5.497 0 0 0 0 10.995m-21.049.001a5.497 5.497 0 1 0 0-10.996a5.497 5.497 0 0 0 0 10.995m106.205 21.128c-14.702 0-26.62-11.915-26.62-26.614c0-14.698 11.918-26.614 26.62-26.614c14.701 0 26.62 11.916 26.62 26.614s-11.919 26.614-26.62 26.614m0-64.22c-18.906 0-34.55 13.947-37.211 32.11h-6.153c-2.685 0-4.864 2.461-4.864 5.496s2.179 5.497 4.864 5.497h6.153c2.66 18.163 18.305 32.11 37.21 32.11C239.159 256 256 239.162 256 218.393c0-20.77-16.842-37.607-37.616-37.607" />
                </svg>
                <span class="ml-2">Jenkins</span>
                <app-icon class="pr-2" icon="fab fa-jenkins" size="lg"></app-icon>
              </p>

              <p>
                <span class="decoration-[#6EACDA] underline underline-offset-4">Operating System:</span>
                Linux
                <app-icon class="pr-2" icon="fab fa-linux" size="lg"></app-icon>
                Windows
                <app-icon class="pr-2" icon="fab fa-windows" size="lg"></app-icon>
              </p>

              <p class="flex items-center space-x-2">
                <span class="decoration-[#6EACDA] underline underline-offset-4">Languages:</span>
                <span class="ml-2">Python</span>
                <app-icon class="pr-2" icon="fab fa-python" size="lg"></app-icon>
                C++
                <svg xmlns="http://www.w3.org/2000/svg" width="25" height="28" viewBox="0 0 256 288">
                  <path fill="#fff"
                    d="M255.987 84.59c-.002-4.837-1.037-9.112-3.13-12.781c-2.054-3.608-5.133-6.632-9.261-9.023c-34.08-19.651-68.195-39.242-102.264-58.913c-9.185-5.303-18.09-5.11-27.208.27c-13.565 8-81.48 46.91-101.719 58.632C4.071 67.6.015 74.984.013 84.58C0 124.101.013 163.62 0 203.141c0 4.73.993 8.923 2.993 12.537c2.056 3.717 5.177 6.824 9.401 9.269c20.24 11.722 88.164 50.63 101.726 58.631c9.121 5.382 18.027 5.575 27.215.27c34.07-19.672 68.186-39.262 102.272-58.913c4.224-2.444 7.345-5.553 9.401-9.267c1.997-3.614 2.992-7.806 2.992-12.539c0 0 0-79.018-.013-118.539" />
                  <path fill="#fff"
                    d="m128.392 143.476l-125.4 72.202c2.057 3.717 5.178 6.824 9.402 9.269c20.24 11.722 88.164 50.63 101.726 58.631c9.121 5.382 18.027 5.575 27.215.27c34.07-19.672 68.186-39.262 102.272-58.913c4.224-2.444 7.345-5.553 9.401-9.267z" />
                  <path fill="#fff"
                    d="M91.25 164.863c7.297 12.738 21.014 21.33 36.75 21.33c15.833 0 29.628-8.7 36.888-21.576l-36.496-21.141z" />
                  <path fill="#fff"
                    d="M255.987 84.59c-.002-4.837-1.037-9.112-3.13-12.781l-124.465 71.667l124.616 72.192c1.997-3.614 2.99-7.806 2.992-12.539c0 0 0-79.018-.013-118.539" />
                  <path fill="#000"
                    d="M249.135 148.636h-9.738v9.74h-9.74v-9.74h-9.737V138.9h9.737v-9.738h9.74v9.738h9.738zM128 58.847c31.135 0 58.358 16.74 73.17 41.709l.444.759l-37.001 21.307c-7.333-12.609-20.978-21.094-36.613-21.094c-23.38 0-42.333 18.953-42.333 42.332a42.13 42.13 0 0 0 5.583 21.003c7.297 12.738 21.014 21.33 36.75 21.33c15.659 0 29.325-8.51 36.647-21.153l.241-.423l36.947 21.406c-14.65 25.597-42.228 42.851-73.835 42.851c-31.549 0-59.084-17.185-73.754-42.707c-7.162-12.459-11.26-26.904-11.26-42.307c0-46.95 38.061-85.013 85.014-85.013m75.865 70.314v9.738h9.737v9.737h-9.737v9.74h-9.738v-9.74h-9.738V138.9h9.738v-9.738z" />
                </svg>
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
export default {
  metaInfo: {
    title: "Home",
  },
  components: {
    Tab,
    Tabs,
  },
  data() {
    return {
      mode: 'dark',
      PearlThoughtsItemList: [
        'Configured essential AWS components, including EC2, VPC, Security Groups, Application Load Balancer, and IAM Roles, to ensure secure and scalable deployment',
        'Deployed a web application using Strapi and React on AWS ECS Fargate utilizing Terraform, implementing Infrastructure as Code (IaC) for efficient resource management',
        'Utilized Docker to containerize the application and pushed the image to AWS ECR, reducing deployment time by 30%',
        'Developed a CI/CD pipeline with GitHub Actions, achieving a 60% faster deployment process and a 20% increase in successful deployments'
      ],

      APROItemList: [
        'Acquired expertise in radio communication systems, operating and troubleshooting a widerange of equipment, resulting in enhanced team communication and reduced downtime by40%',
        'Designed and deployed an Inverted-V antenna with an operating frequencies of 7Mhz,14Mhz and 21Mhz'
      ],

      OLatusItemList: [
        'Developed computer vision software for an autonomous robot using OpenCV, enabling real-time perception and analysis',
        'Implemented object detection algorithms to identify and track objects, improving the robot’s decision-making capabilities',
        'Optimized image processing techniques for noise reduction, edge detection, and feature extraction, enhancing visual recognition accuracy',
        'Acquired strong robotics expertise, integrating computer vision with autonomous navigation and control mechanisms'
      ],
      BSNLItemList: [
        'Gained a strong foundation in telecom services, understanding communication operations, including network infrastructure, signal transmission, routing, and protocols',
        'Studied telecom network architectures, including cellular, fiber-optic, and satellite communication systems, enhancing knowledge of connectivity solutions',
        'Explored signal processing techniques, learning about modulation, error correction, and data transmission methods for efficient communication',
        'Developed an understanding of telecom protocols, such as TCP/IP, VoIP, and LTE, ensuring seamless and secure data exchange across networks'
      ]

    }
  },
  mounted() {
    const analyticsScript = document.createElement('script');
    analyticsScript.async = true;
    analyticsScript.src = 'https://www.googletagmanager.com/gtag/js?id=G-P4W5E7FPB0';
    document.body.appendChild(analyticsScript);

    window.dataLayer = window.dataLayer || [];
    function gtag() { dataLayer.push(arguments); }
    gtag('js', new Date());
    gtag('config', 'G-P4W5E7FPB0');
  },
  methods: {
    changeStyle() {
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
.pill-outline {
  display: flex;
  align-items: center;
  justify-content: center;
  gap: 10px;
  padding: 5px 15px;
  border: 1.5px solid white;
  border-radius: 25px;
  font-size: 14px;
  color: white;
  text-decoration: none;
  width: fit-content;
}

.circle {
  width: 15px;
  height: 15px;
  background-color: lime;
  border-radius: 50%;
  box-shadow: 0 0 5px lime;
  animation: glow 0.5s infinite alternate;
}

@keyframes glow {
  0% {
    box-shadow: 0 0 5px lime;
  }

  100% {
    box-shadow: 0 0 50px lime;
  }
}

.wave {
  animation-name: wave-animation;
  animation-duration: 2.5s;
  transform-origin: 70% 70%;
  display: inline-block;
}

@keyframes wave-animation {
  0% {
    transform: rotate(0.0deg)
  }

  10% {
    transform: rotate(14.0deg)
  }

  20% {
    transform: rotate(-8.0deg)
  }

  30% {
    transform: rotate(14.0deg)
  }

  40% {
    transform: rotate(-4.0deg)
  }

  50% {
    transform: rotate(10.0deg)
  }

  60% {
    transform: rotate(0.0deg)
  }

  100% {
    transform: rotate(0.0deg)
  }
}

.wave:hover {
  animation-play-state: running;
}
</style>