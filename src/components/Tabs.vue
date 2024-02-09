<template lang="html">
  <div class="tabs-container">
    <ul class='tabs__header'>
      <li v-for='(tab, index) in tabs'
        :key='tab.title'
        @click='selectTab(index)'
        :class='{"tab__selected": (index == selectedIndex)}'>
        {{ tab.title }}
      </li>
    </ul>
    <div class="tab-content">
      <slot :index="selectedIndex"></slot>
    </div>
  </div>
</template>

<script>
export default {
  props: {
    mode: {
      type: String,
      default: 'light'
    }
  },
  data () {
    return {
      selectedIndex: 0, // the index of the selected tab,
      tabs: []         // all of the tabs
    }
  },
  created () {
    this.tabs = this.$children
  },
  mounted () {
    this.selectTab(0)
  },
  methods: {
    selectTab (i) {
      this.selectedIndex = i

      // loop over all the tabs
      this.tabs.forEach((tab, index) => {
        tab.isActive = (index === i)
      })
    }
  }
}
</script>

<style lang="css">

  .tabs-container {
    display: flex;
    align-items: flex-start;
    justify-content: flex-start;
  }

  ul.tabs__header {
    list-style: none;
    margin: 0;
    padding: 0;
    margin-right: 20px;
  }

  ul.tabs__header > li {
    padding: 15px 30px;
    border-radius: 10px;
    margin-bottom: 5px;
    cursor: pointer;
    list-style-type: none;
  }

ul.tabs__header > li.tab__selected::before {
  content: ">"; /* Add the ">" symbol before the tab name */
  margin-right: 5px; /* Adjust spacing between the ">" symbol and the tab name */
}

ul.tabs__header > li.tab__selected {
  border-radius: 10px 10px 0 0;
  border-right: 8px solid transparent;
  color: #D37EA8
}

  .tab-content {
    flex: 1;
  }

  .tab {
    color: white;
    padding: 12px;
    border-radius: 10px;
    min-height: 100px; /*//tweak*/ 
  }

  .tabs__light .tab {
    background-color: #fff;
  }

  .tabs__light li {
    background-color: #ddd;
    color: #aaa;
  }

  .tabs__light li.tab__selected {
    background-color: #fff;
    color: #83FFB3;
  }

  .tabs__dark .tab {
    background-color: #555;
    color: #eee;
  }

  .tabs__dark li {
    background-color: #ddd;
    color: #aaa;
  }

  .tabs__dark li.tab__selected {
    background-color: #555;
    color: white;
  }

</style>
