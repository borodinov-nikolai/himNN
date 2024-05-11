'use client'
import React from 'react'
import styles from './FavoritesList.module.scss'
import { useAppDispatch, useAppSelector } from '@/shared/hooks/redux'
import Image from 'next/image'
import { imageUrl } from '@/entities/image'
import { removeCartItem} from '@/entities/cart'
import CloseIcon from '@/shared/icons/close'
import { selectFavorites } from '@/entities/favorites'


const FavoritesList = () => {
  const dispatch = useAppDispatch()
  const {products} = useAppSelector(selectFavorites)


  
   

  return (
    <div className={styles.root} >
      <table className={styles.table} >
        <thead>
          <tr>
            <th scope='col' >Товары</th>
            <th scope='col' >Цена</th>
            <th scope='col' ></th>
          </tr>
        </thead>
        <tbody>
          {products?.map(({id, image, name, price, priceUnits})=>
            <tr key={id} >
               <td><div className={styles.preview} ><div className={styles.imageHolder} >
                 <Image src={imageUrl + image} width={200} height={200} alt='product image'/>
               </div> <p>{name}</p> </div></td>
               <td><div><span>{price}</span> <span>{priceUnits}</span> </div></td>
               <td><div className={styles.remove} > <button onClick={()=> dispatch(removeCartItem({id}))} ><CloseIcon/></button> </div></td>
            </tr>
          )}
        </tbody>
    
      </table>
    </div>
  )
}

export default FavoritesList