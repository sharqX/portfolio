<template>
  <div>
    <header class="contain flex justify-between items-center h-20">
    </header>
    <header
      :class="[showMenu ? 'hidden' : 'fixed']"
      class="
        transition
        ease-in
        duration-500
        h-32
        w-full
        bg-[#1D1F21]
        md:hidden
        top-28
        left-0
        right-0
      "
    >
    </header>
    <slot />

    <footer class="contain flex justify-between mb-5 text-sl text-dimGreyAlt">
      <p>Copyright © 2022 🚀</p>
    </footer>
  </div>
</template>

<script>
export default {
  data() {
    return {
      showMenu: true,
    };
  },
};
</script>


<static-query>
query {
  metadata {
    siteName
  }
}
</static-query>