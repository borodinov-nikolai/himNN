'use client'
import { setCart } from '@/entities/cart'
import { useAppDispatch } from '@/shared/hooks/redux'
import React, { useEffect } from 'react'



export const LoadCart = () => {
const dispatch = useAppDispatch()

    useEffect(()=> {
      const loadCartFromLocalStorage = ()=>  {
        const cartString = window.localStorage.getItem('cart')
            
        if(cartString) {
          try {
            const cart = cartString && JSON.parse(cartString)
            dispatch(setCart(cart))
          } catch(e) {
            console.error(e)
          }
        }  
      }
              
      loadCartFromLocalStorage()  
                
    }, [])

  return (
    <></>
  )
}
