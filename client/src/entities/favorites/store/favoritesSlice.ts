import { createSlice, PayloadAction } from "@reduxjs/toolkit"






type Product = {
        id: number
        image: string
        name: string
        price: number
        priceUnits: string
        inStock: boolean
}

interface IFavoritesState {
        products: Product[]
}



const initialState: IFavoritesState = {
        products: [],
}







const favoritesSlice = createSlice({
        name: 'favorites',
        initialState,
        reducers: {
                setFavorites: (state, action:PayloadAction<IFavoritesState> )=> {
                        const {products} = action.payload
                        state.products = products
                },
                clearFavorites: (state)=> {
                      state.products = []
                      localStorage.removeItem('favorites')
                },
                addFavoritesItem: (state, action: PayloadAction<Product>) => {
                        const product = action.payload
                        const findedItem = state.products.find((item) => item.id === product.id)

                        if (!findedItem) {
                                state.products = [...state.products, product]
                        } 

                        const favoritesString = JSON.stringify(state)
                        window.localStorage.setItem('favorites', favoritesString)
                },
           
                removeFavoritesItem: (state, action: PayloadAction<{id: number}>)=> {
                        const filteredArray = state.products.filter((item)=> item.id !== action.payload.id)
                        state.products = filteredArray
                        const favoritesString = JSON.stringify(state)
                        window.localStorage.setItem('favorites', favoritesString)
                }

             
        }
})

export const { addFavoritesItem, setFavorites, removeFavoritesItem, clearFavorites} = favoritesSlice.actions
export default favoritesSlice.reducer