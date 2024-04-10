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
    <p>
        <span>&copy; 2024 🚀</span>
    </p>
    <p>
        <a href="/privacy-policy.html">Privacy Policy</a> |
        <a href="/terms-of-service.html">Terms of Service</a> |
        <a href="/refund-policy.html">Refund Policy</a> |
        <a href="/support.html">Support</a>
    </p>
</footer>

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