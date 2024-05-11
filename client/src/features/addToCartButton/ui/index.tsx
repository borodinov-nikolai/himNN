'use client'
import React, { FC } from 'react'
import styles from './AddToCartButton.module.scss'
import Button from '@/shared/ui/button'
import { IProduct } from '@/entities/product'
import { useAppDispatch, useAppSelector } from '@/shared/hooks/redux'
import { addCartItem } from '@/entities/cart'
import { message } from 'antd'


interface IProps {
  product: IProduct,
  count: number
}

export const AddToCartButton :FC<IProps> = ({product, count}) => {
  const dispatch = useAppDispatch()
  const [messageApi, contextHolder] =  message.useMessage()
  const cart = useAppSelector((state)=> state.cart)
  const {id, attributes} = product?.data || {}
  const {name, price, priceUnits, image} = attributes || {}
  const imageUrl = image?.data?.attributes?.url



    const handleAddProduct = (e: React.MouseEvent<HTMLButtonElement, MouseEvent>)=> {
        e.stopPropagation();
        dispatch(addCartItem({id, name, price, priceUnits, image: imageUrl, count}))
        messageApi.success('Товар добавлен в корзину')
    }

   
    

  return (
        <div className={styles.root} >
          {contextHolder}
            <Button  onClick={(e)=> handleAddProduct(e)} >В корзину</Button>
            </div>
  )
}
