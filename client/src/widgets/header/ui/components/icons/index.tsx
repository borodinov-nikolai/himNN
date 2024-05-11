'use client'
import React from 'react'
import styles from './Icons.module.scss'
import Link from 'next/link'
import MobileMenu from '../mobileMenu'
import { ICategories } from '@/entities/category'
import { Badge } from 'antd'
import { useAppSelector } from '@/shared/hooks/redux'
import CartIcon from '@/shared/icons/cart'
import FavoritesIcon from '@/shared/icons/favorites'
import SearchIcon from '@/shared/icons/search'
import { selectFavorites } from '@/entities/favorites'
import { selectCart } from '@/entities/cart'


const Icons = ({categories}: {categories?: ICategories}) => {
    const {totalCount: cartCount} = useAppSelector(selectCart)
    const favorites = useAppSelector(selectFavorites)
  return (
    <ul className={styles.root} >
    <li>
    <SearchIcon/>
    </li>
    <Badge color='rgba(0, 179, 2, 1)' size='small' count={favorites.products.length} >
      <li>
        <Link href={'/favorites'} >
          <FavoritesIcon/>
        </Link>
      </li>
    </Badge>
      <Badge color='rgba(0, 179, 2, 1)' size='small' count={cartCount} >
          <li  >
            <Link href={'/cart'} >
             <CartIcon/>
            </Link>
          </li>
      </Badge>
    <li  className={styles.burger} >
 <MobileMenu categories={categories} />
 </li>
  </ul>
  )
}

export default Icons