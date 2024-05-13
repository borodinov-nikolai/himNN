import { cartSlice } from '@/entities/cart'
import { favoritesSlice } from '@/entities/favorites'
import { configureStore } from '@reduxjs/toolkit'
import { emptySplitApi } from '../configs/rtk_base'
import { setupListeners } from '@reduxjs/toolkit/query'


export const store = configureStore({
  reducer: {
    cart: cartSlice,
    favorites: favoritesSlice,
    [emptySplitApi.reducerPath]: emptySplitApi.reducer,
  },

  middleware: (getDefaultMiddleware) =>
    getDefaultMiddleware().concat(emptySplitApi.middleware),

})

setupListeners(store.dispatch)

export type RootState = ReturnType<typeof store.getState>

export type AppDispatch = typeof store.dispatch