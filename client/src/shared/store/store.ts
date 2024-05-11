import { cartSlice } from '@/entities/cart'
import { favoritesSlice } from '@/entities/favorites'
import { configureStore } from '@reduxjs/toolkit'


export const store = configureStore({
  reducer: {
    cart: cartSlice,
    favorites: favoritesSlice
  },
})


export type RootState = ReturnType<typeof store.getState>

export type AppDispatch = typeof store.dispatch