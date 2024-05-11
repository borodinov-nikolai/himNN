import { createSlice, PayloadAction } from "@reduxjs/toolkit"
import { stat } from "fs"





type Product = {
        id: number
        image: string
        name: string
        price: number
        priceUnits: string
        count: number
}

interface ICartState {
        products: Product[]
        totalCount: number
        totalPrice: number
}



const initialState: ICartState = {
        products: [],
        totalCount: 0,
        totalPrice: 0
}







const cartSlice = createSlice({
        name: 'cart',
        initialState,
        reducers: {
                setCart: (state, action:PayloadAction<ICartState> )=> {
                        const {products, totalCount, totalPrice} = action.payload
                        state.products = products
                        state.totalCount = totalCount
                        state.totalPrice = totalPrice
                },
                clearCart: (state)=> {
                      state.products = []
                      state.totalCount = 0
                      state.totalPrice = 0
                      localStorage.removeItem('cart')
                },
                addCartItem: (state, action: PayloadAction<Product>) => {
                        const product = action.payload
                        const findedItem = state.products.find((item) => item.id === product.id)

                        if (!findedItem) {
                                state.products = [...state.products, product]
                        } else {
                                const newArray = state.products.map((item) => {
                                        if (item.id === product.id) {
                                                item.count += product.count
                                        }
                                        return item
                                })
                                state.products = newArray

                        }
                        state.totalCount = state.products.reduce((sum, item) => sum + item.count, 0)
                        state.totalPrice = state.products.reduce((sum, item) => sum + (item.price * item.count), 0)
                        const cartString = JSON.stringify(state)
                        window.localStorage.setItem('cart', cartString)
                },
           
                removeCartItem: (state, action: PayloadAction<{id: number}>)=> {
                        const filteredArray = state.products.filter((item)=> item.id !== action.payload.id)
                        state.products = filteredArray
                        state.totalCount = state.products.reduce((sum, item) => sum + item.count, 0)
                        state.totalPrice = state.products.reduce((sum, item) => sum + (item.price * item.count), 0)
                        const cartString = JSON.stringify(state)
                        window.localStorage.setItem('cart', cartString)
                },

                setCartItemCount:(state, action: PayloadAction<{id: number, count: number}>)=> {
                        const {id, count} = action.payload
                       const newArray = state.products.map((item)=> {
                        if(item.id === id) {
                             item.count = count
                        }
                        return item
                       })
                       state.products = newArray
                       state.totalCount = state.products.reduce((sum, item) => sum + item.count, 0)
                       state.totalPrice = state.products.reduce((sum, item) => sum + (item.price * item.count), 0)
                       const cartString = JSON.stringify(state)
                       window.localStorage.setItem('cart', cartString)
                }
        }
})

export const { addCartItem, setCart, removeCartItem, setCartItemCount, clearCart} = cartSlice.actions
export default cartSlice.reducer