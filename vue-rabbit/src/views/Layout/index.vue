<script setup>
import LayoutNav from './components/LayoutNav.vue'
import LayoutHeader from './components/LayoutHeader.vue'
import LayoutFooter from './components/LayoutFooter.vue'
import LayoutFiexd from './components/LayoutFiexd.vue'

// 触发获取导航列表的action
import { useCategoryStore } from '@/stores/categoryStore'
import { onMounted } from 'vue'
const categoryStore = useCategoryStore()

onMounted(()=>categoryStore.getCategory())
</script>

<template>
  <LayoutNav />
  <LayoutHeader />
  <!-- 添加key 破坏服用机制 强制销毁 -->
  <!-- <RouterView :key="$route.fullPath"/> -->
  <RouterView/>
  <LayoutFooter />
  <LayoutFiexd />
</template>