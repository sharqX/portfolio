import DefaultLayout from '~/layouts/Default.vue'

import { faGithub, faDiscord, faJs, faNode, faLinkedin, faXTwitter, faAws, faDocker, faLinux, faWindows, faPython, faJenkins } from '@fortawesome/free-brands-svg-icons'
import { faAt, faDatabase, faBars, faLink, faEye, faCodeFork, faRss } from '@fortawesome/free-solid-svg-icons'

import { library } from '@fortawesome/fontawesome-svg-core'
import { FontAwesomeIcon } from '@fortawesome/vue-fontawesome'

export default function (Vue) {

  library.add(faGithub, faDiscord, faJs, faNode, faLinkedin, faAt, faDatabase, faBars, faLink, faEye, faCodeFork, faRss, faXTwitter, faAws, faDocker, faLinux, faWindows, faPython, faJenkins)

  // Set default layout as a global component
  Vue.component('Layout', DefaultLayout)
  Vue.component('AppIcon', FontAwesomeIcon)
}
