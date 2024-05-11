'use client'
import { setFavorites } from '@/entities/favorites'
import { useAppDispatch } from '@/shared/hooks/redux'
import React, { useEffect } from 'react'



export const LoadFavorites = () => {
const dispatch = useAppDispatch()

    useEffect(()=> {
      const loadFavoritesFromLocalStorage = ()=>  {
        const favoritesString = window.localStorage.getItem('favorites')
            
        if(favoritesString) {
          try {
            const favorites = favoritesString && JSON.parse(favoritesString)
            dispatch(setFavorites(favorites))
          } catch(e) {
            console.error(e)
          }
        }  
      }
              
      loadFavoritesFromLocalStorage()  
                
    }, [])

  return (
    <></>
  )
}
