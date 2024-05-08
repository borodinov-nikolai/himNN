'use client'
import React from 'react'
import styles from './AddToCartButton.module.scss'
import Button from '@/shared/ui/button'


export const AddToCartButton = () => {


    const handleClick = (e: React.MouseEvent<HTMLButtonElement, MouseEvent>)=> {
        e.stopPropagation()
    }

  return (
        <div className={styles.root} >
            <Button onClick={(e)=> handleClick(e)} >В корзину</Button>
            </div>
  )
}
