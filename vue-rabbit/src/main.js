//引入初始化样式文件
import '@/styles/common.scss'

import { createApp } from 'vue'
import { createPinia } from 'pinia'
import createPersistedState from 'pinia-plugin-persistedstate'

import App from './App.vue'
import router from './router'

//引入懒加载指令插件并注册
import { lazyPlugin } from './directives'
//引入全局组件插件
import { componentPlugin } from './components'

const app = createApp(App)
const pinia = createPinia()
//注册持久化插件
pinia.use(createPersistedState)
app.use(pinia)
app.use(router)
app.use(lazyPlugin)
app.use(componentPlugin)

app.mount('#app')

