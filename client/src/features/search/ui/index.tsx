'use client'
import React, { useState } from 'react'
import styles from './Search.module.scss'
import SearchIcon from '@/shared/icons/search'
import CloseIcon from '@/shared/icons/close'
import cs from 'classnames'
import { useSearcProductQuery } from '@/entities/search'
import { useDebounce } from 'use-debounce'
import Link from 'next/link'

export const Search = () => {
  const [isOpen, setIsOpen] = useState<boolean>(false)
  const [searchQuery, setSearchQuery] = useState<string>('')
  const [debouncedSearchQuery] = useDebounce(searchQuery, 500)
  const products = useSearcProductQuery(debouncedSearchQuery)



  const handleOpen = ()=> {
    setIsOpen(true)
    document.body.style.overflow = 'hidden'
  }


  const handleClose = ()=> {
    setIsOpen(false)
    document.body.style.overflow = 'auto'
    setSearchQuery('')
  }

  return (
    <>
        <div onClick={handleOpen} className={styles.openBtn} ><SearchIcon/></div>
       {isOpen && <div className={cs(styles.content, 'modal_open')} >
         <div className={styles.contentHeader} >
          <div className={styles.searchInput} >
            <input onChange={(e)=> setSearchQuery(e.target.value)} placeholder='Поиск' type="text" />
            <SearchIcon/>
          </div>
         </div>
         <div className='container'>
           <ul className={styles.searchList} >
            {products?.data?.data?.map(({id, attributes})=> {
               const {name} = attributes || {}
               const categoruHref = attributes?.category?.data?.attributes?.href
               const subcategoryHref = attributes?.subcategory?.data?.attributes?.href
              return <li key={id} ><Link onClick={handleClose} href={`/catalog/${categoruHref}/${subcategoryHref}/${id}`} >{name}</Link></li>
            })
            }
           </ul>
         </div>
        <button onClick={handleClose} className={styles.closeBtn} ><CloseIcon/></button>
        </div>}
    </>
  )
}
