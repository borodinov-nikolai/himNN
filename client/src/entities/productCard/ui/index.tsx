'use client'
import React, { FC, useState } from 'react'
import styles from './ProductCard.module.scss'
import {imageUrl } from '@/entities/image'
import Image from 'next/image'
import { useRouter } from 'next/navigation'
import { IProduct } from '@/entities/product'
import Counter from '@/shared/ui/counter'
import cs from 'classnames'

interface IProps {
  ToCartButton: React.JSX.ElementType
  ToFavoritesButton: React.JSX.ElementType
  RecuestACallButton: React.JSX.ElementType
  product?: IProduct
}

export const ProductCard: FC<IProps> = ({product, ToCartButton, ToFavoritesButton, RecuestACallButton}) => {
  const [count, setCount] = useState<number>(1)
  const [inFavorites, setInFavorites] = useState<boolean>()
  const router = useRouter()
  const {name, image, inStock, price, subcategory, category, priceUnits} = product?.data?.attributes || {}
  const imageHref = image?.data?.attributes?.url
  const subcategoryHref = subcategory?.data?.attributes?.href
  const categoryHref = category?.data?.attributes?.href
  const productId = product?.data?.id
  return (
    <div onClick={()=> (subcategoryHref && categoryHref) && router.push(`/catalog/${categoryHref}/${subcategoryHref}/${productId}`)} className={styles.root} >
      <div className={styles.imageHolder} >
        {imageHref && <Image src={imageUrl + imageHref} width={400} height={400} alt='prosuct image' />}
      </div>
      <p className={styles.name} >{name}</p>
      {inStock ? <p className={styles.inStock} > 
      <svg width="13" height="8" viewBox="0 0 13 8" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M1 3.35714L4.92857 7.28571L12 1" stroke="#00B302"/>
</svg>
<span>Есть в наличии</span>

       </p> :
       <p className={styles.inStock} >
<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
<path opacity="0.4" d="M12 22C17.5228 22 22 17.5228 22 12C22 6.47715 17.5228 2 12 2C6.47715 2 2 6.47715 2 12C2 17.5228 6.47715 22 12 22Z" fill="#BEBEBE"/>
<path d="M13.0604 12L15.3604 9.69998C15.6504 9.40998 15.6504 8.92999 15.3604 8.63999C15.0704 8.34999 14.5904 8.34999 14.3004 8.63999L12.0004 10.94L9.70035 8.63999C9.41035 8.34999 8.93035 8.34999 8.64035 8.63999C8.35035 8.92999 8.35035 9.40998 8.64035 9.69998L10.9404 12L8.64035 14.3C8.35035 14.59 8.35035 15.07 8.64035 15.36C8.79035 15.51 8.98035 15.58 9.17035 15.58C9.36035 15.58 9.55035 15.51 9.70035 15.36L12.0004 13.06L14.3004 15.36C14.4504 15.51 14.6404 15.58 14.8304 15.58C15.0204 15.58 15.2104 15.51 15.3604 15.36C15.6504 15.07 15.6504 14.59 15.3604 14.3L13.0604 12Z" fill="white"/>
</svg>
<span>Нет в наличии</span>
       </p>
       }
       <div className={styles.price} >{price} <span>{priceUnits}</span></div>
       {inStock ?   <div className={styles.footer}> <Counter onChange={(value)=> setCount(value)} /> <div className={styles.toCartBtn} > <ToCartButton count={count} product={product} /></div> </div> :
         <div className={styles.footer}> <div onClick={(e)=> e.stopPropagation()} className={styles.requsetACallbtn} >
           <RecuestACallButton>Под заказ</RecuestACallButton>
         </div> </div>
       }
     
       <div className={cs(styles.favoritesBtn, inFavorites && styles.favoritesBtn__active)} >
        <ToFavoritesButton onChange={(value: boolean)=> setInFavorites(value)} product={product} />
       </div>
    </div>
  )
}
