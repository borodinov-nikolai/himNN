'use client'
import { imageUrl } from '@/entities/image'
import styles from './ProductInfo.module.scss'
import { IProduct } from '@/entities/product'
import React, { FC, useState } from 'react'
import { Image } from 'antd'
import Button from '@/shared/ui/button'
import Counter from '@/shared/ui/counter'
import { AddToFavoritesButton } from '@/features/addToFavoritesBtn'
import { AddToCartButton } from '@/features/addToCartButton/ui'
import { RequestACallBtn } from '@/features/recuestACallBtn'


interface IProps {
    product?: IProduct
}

const ProductInfo: FC<IProps> = ({product}) => {
  const [count, setCount] = useState<number>(1)
  const {name, image, price, inStock, priceUnits} = product?.data?.attributes || {}
  const imageHref = image?.data?.attributes?.url
  return (

    <div className={styles.root} >

          {product && <div className={styles.info} >
            <div className={styles.infoImageHolder} >
              { imageHref &&  <Image src={imageUrl + imageHref} width='auto' height='100%' alt='product image' />}
            </div>
            <div className={styles.infoContent} >
               { name && <h3 className={styles.infoName} >
                {name}
              </h3>}
              {price && <p className={styles.infoPrice} >{price} { priceUnits && <span>{priceUnits}</span>}</p>}
              {inStock ? <p className={styles.infoInStock} > 
      <svg width="13" height="8" viewBox="0 0 13 8" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M1 3.35714L4.92857 7.28571L12 1" stroke="#00B302"/>
</svg>
<span>Есть в наличии</span>

       </p> :
       <p className={styles.infoInStock} >
<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
<path opacity="0.4" d="M12 22C17.5228 22 22 17.5228 22 12C22 6.47715 17.5228 2 12 2C6.47715 2 2 6.47715 2 12C2 17.5228 6.47715 22 12 22Z" fill="#BEBEBE"/>
<path d="M13.0604 12L15.3604 9.69998C15.6504 9.40998 15.6504 8.92999 15.3604 8.63999C15.0704 8.34999 14.5904 8.34999 14.3004 8.63999L12.0004 10.94L9.70035 8.63999C9.41035 8.34999 8.93035 8.34999 8.64035 8.63999C8.35035 8.92999 8.35035 9.40998 8.64035 9.69998L10.9404 12L8.64035 14.3C8.35035 14.59 8.35035 15.07 8.64035 15.36C8.79035 15.51 8.98035 15.58 9.17035 15.58C9.36035 15.58 9.55035 15.51 9.70035 15.36L12.0004 13.06L14.3004 15.36C14.4504 15.51 14.6404 15.58 14.8304 15.58C15.0204 15.58 15.2104 15.51 15.3604 15.36C15.6504 15.07 15.6504 14.59 15.3604 14.3L13.0604 12Z" fill="white"/>
</svg>
<span>Нет в наличии</span>
       </p>
       }
              <div className={styles.infoFooter} >
                 <Counter onChange={(value)=> setCount(value)} /> {inStock ? <AddToCartButton count={count} product={product} /> :  <RequestACallBtn>Под заказ</RequestACallBtn>} <AddToFavoritesButton product={product} />
              </div>

            </div>
          </div>}
    </div>
  )
}

export default ProductInfo