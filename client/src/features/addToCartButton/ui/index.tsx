'use client'
import React, { FC } from 'react'
import styles from './AddToCartButton.module.scss'
import Button from '@/shared/ui/button'
import { IProduct } from '@/entities/product'
import { useAppDispatch, useAppSelector } from '@/shared/hooks/redux'
import { addToCart } from '@/entities/cart'


interface IProps {
  product: IProduct,
  count: number
}

export const AddToCartButton :FC<IProps> = ({product, count}) => {
  const dispatch = useAppDispatch()
  const cart = useAppSelector((state)=> state.cart)
  const {id, attributes} = product?.data || {}
  const {name, price, priceUnits, image} = attributes || {}
  const imageUrl = image?.data?.attributes?.url
    console.log(cart)


    const handleAddProduct = (e: React.MouseEvent<HTMLButtonElement, MouseEvent>)=> {
        e.stopPropagation();
        dispatch(addToCart({id, name, price, priceUnits, image: imageUrl, count}))
    }

   
    

  return (
        <div className={styles.root} >
            <Button  onClick={(e)=> handleAddProduct(e)} >В корзину</Button>
            </div>
  )
}
