<template lang="html">
  <div class='tab' v-show='isActive'>
    <slot></slot>
    <div>
      <h2 style="font-weight: bold; padding-bottom: 10px;"><span>{{position}} </span><span><a class="decoration-cuppy underline underline-offset-4" :href="companyURL" rel="noopener noreferrer" target="_blank">@{{company}}</a></span></h2>                
      <div>
      <ul style="list-style-type: disc;">
        <li v-for="(item, index) in itemList" :key="index" style="color: #C9CACC; line-height: 1.8;">{{item}}</li>
      </ul>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  props: {
    title: {
      type: String,
      default: 'Tab'
    },
    position: {
      type: String,
      default: 'Engineer'
    },
    company: {
      type: String,
      default: null
    },
    companyURL: {
      type: String,
      default: null
    },
    itemList: {
      type: Array,
      default: function() {return [];}
    }
  },
  data () {
    return {
      isActive: true
    }
  }
}
</script>

<style lang="css">

</style>