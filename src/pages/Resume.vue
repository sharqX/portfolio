<template>
  <Layout>
    <transition name="fade" appear>
      <main class="mt-1 mb-14">
        <div class="contain flex flex-col gap-7">
          <h1 class="font-semibold text-4xl">
            My Resume
            <button
              style="background-color:#ffffff;border:none;color:black;padding:5px 10px;
              text-align:center;text-decoration:underline wavy dodgerblue;font-size:16px;cursor:pointer; float:inline-end;">
              <a
                href="https://drive.usercontent.google.com/u/0/uc?id=1UqFOdEFIHScARIcsqwLKAjTzreWLcXJG&export=download">Download</a></button>
          </h1>
          <iframe src="https://drive.google.com/file/d/1UqFOdEFIHScARIcsqwLKAjTzreWLcXJG/preview" width="1150" height="1000" allow="autoplay"></iframe>
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
  data() {
    return {
      mode: 'dark'
    }
  },
  methods: {
    changeStyle() {
      if (this.mode === 'dark') {
        this.mode = 'light'
      } else {
        this.mode = 'dark'
      }
    }
  }
};
</script>