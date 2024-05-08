'use client'
import React, { useState } from 'react'
import styles from './AddToFavorites.module.scss'
import cs from 'classnames'

export const AddToFavoritesButton = () => {
  const [active, setActive] = useState<boolean>(false)


  const handleClick = (e: React.MouseEvent<HTMLDivElement, MouseEvent>)=> {
    e.stopPropagation()
    setActive(!active)
  }


  return (
    <div onClick={(e)=> handleClick(e)} className={cs(styles.root, active && styles.root__active)} >
 <svg width="18" height="20" viewBox="0 0 18 20" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M13.418 0.833374H4.5813C2.6288 0.833374 1.04297 2.42837 1.04297 4.37171V17.2875C1.04297 18.9375 2.22547 19.6342 3.6738 18.8367L8.14714 16.3525C8.6238 16.0867 9.3938 16.0867 9.8613 16.3525L14.3346 18.8367C15.783 19.6434 16.9655 18.9467 16.9655 17.2875V4.37171C16.9563 2.42837 15.3705 0.833374 13.418 0.833374Z" stroke="#4E4E4E" strokeWidth="1.5" strokeLinecap="round" strokeLinejoin="round"/>
</svg>

    </div>
  )
}
