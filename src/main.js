import DefaultLayout from '~/layouts/Default.vue'

import { faGithub, faTwitter, faDiscord, faJs, faVuejs, faGolang, faCss3, faNode, faLinkedin } from '@fortawesome/free-brands-svg-icons'
import { faAt, faDatabase, faBars, faLink, faEye, faCodeFork, faRss } from '@fortawesome/free-solid-svg-icons'

import { library } from '@fortawesome/fontawesome-svg-core'
import { FontAwesomeIcon } from '@fortawesome/vue-fontawesome'

export default function (Vue) {

  library.add(faGithub, faTwitter, faDiscord, faJs, faVuejs, faGolang, faCss3, faNode, faLinkedin, faAt, faDatabase, faBars, faLink, faEye, faCodeFork, faRss)

  // Set default layout as a global component
  Vue.component('Layout', DefaultLayout)
  Vue.component('AppIcon', FontAwesomeIcon)
}
