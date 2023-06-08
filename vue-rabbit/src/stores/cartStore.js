//封装购物车模块
import { defineStore } from 'pinia'
import { computed, ref } from 'vue'
import { useUserStore } from './userStore'
import { insertCartAPI, findNewCartListAPI, delCartAPI } from '@/apis/cart'

export const useCartStore = defineStore('cart', () => {
    const userStore = useUserStore()
    const isLogin = computed(() => userStore.userInfo.token)
    //1.定义state - cartList
    const cartList = ref([])
    //2.定义action - addCart
    //添加购物车
    const addCart = async (goods) => {
        const { skuId, count } = goods
        if (isLogin.value) {
            //登录之后加入购物车逻辑
            await insertCartAPI({ skuId, count })
            updateNewList()
        } else {
            //添加购物车操作
            //已添加过 - count+1
            //没有添加过 - 直接push
            const item = cartList.value.find((item) => goods.skuId === item.skuId)
            if (item) {
                item.count++
            } else {
                cartList.value.push(goods)
            }
        }

    }

    //删除购物车
    const delCart = async (skuId) => {
        if (isLogin.value) {
            console.log(isLogin);
            //调用接口实现删除购物车
            await delCartAPI([skuId])
            updateNewList()
        } else {
            //使用splice方式
            const index = cartList.value.findIndex((item) => skuId === item.skuId)
            cartList.value.splice(index, 1)
            //使用filter方式
            // const cart = cartList.value.filter((item)=>!(skuId === item.skuId))
            // cartList.value = cart
        }

    }

    //清除购物车
    const clearCart = () => {
        cartList.value = []
    }

    //获取最新购物车列表action
    const updateNewList = async () => {
        const res = await findNewCartListAPI()
        cartList.value = res.result
    }

    //修改单选框状态
    const singleCheck = (skuId, selected) => {
        skuId.selected = selected
    }

    //全选功能
    const allCheck = (selected) => {
        //把cartList中的每一项selected都设置为全选框状态
        cartList.value.forEach(item => item.selected = selected);
    }

    //计算属性
    //1.总数 - 所有项的count之和
    const allCount = computed(() => cartList.value.reduce((prev, cur) => prev + cur.count, 0))
    //2.总价 - 所有项的count * price之和
    const allPrice = computed(() => cartList.value.reduce((prev, cur) => prev + cur.count * cur.price, 0))
    //是否全选
    const isAll = computed(() => cartList.value.every((item) => item.selected))
    //计算所有选中的商品总数
    const selectCount = computed(() => cartList.value.filter(item => item.selected).reduce((prev, cur) => prev + cur.count, 0))
    //计算所有选中的商品总价
    const selectPrice = computed(() => cartList.value.filter(item => item.selected).reduce((prev, cur) => prev + cur.count * cur.price, 0))

    return {
        cartList,
        addCart,
        delCart,
        allCount,
        allPrice,
        singleCheck,
        isAll,
        allCheck,
        selectCount,
        selectPrice,
        clearCart,
        updateNewList
    }
}, {
    persist: true
})