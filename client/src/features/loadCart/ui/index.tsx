'use client'
import { setCart } from '@/entities/cart'
import { useAppDispatch } from '@/shared/hooks/redux'
import React, { useEffect } from 'react'



export const LoadCart = () => {
const dispatch = useAppDispatch()

    useEffect(()=> {


            const cartString = window.localStorage.getItem('cart')
            
            const cart = cartString && JSON.parse(cartString)
            console.log(cart)
            dispatch(setCart(cart))
        

    }, [])

  return (
    <></>
  )
}
