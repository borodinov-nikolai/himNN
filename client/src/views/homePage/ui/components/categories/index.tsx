'use client'
import { ICategory } from '@/entities/category'
import React, { FC } from 'react'
import styles from './Categories.module.scss'
import cs from 'classnames'
import { imageUrl } from '@/entities/image'
import Image from 'next/image'
import Button from '@/shared/ui/button'
import Link from 'next/link'

interface IProps {
  categories?: ICategory
}

const Categories: FC<IProps> = ({categories}) => {


  return (
    <div className={styles.root} >
      <div className={cs('container', styles.inner)} >
      <h2 className={styles.title} >Наша продукция</h2>
        <ul className={styles.list} >
          {categories?.data?.map(({id, attributes})=>{
            const {name, image, href} = attributes
            const imagePath = image?.data?.attributes?.url
            return(
              <li className={styles.listItem} key={id}>
                <div className={styles.imageHolder} >
                  { imagePath && <Image src={imageUrl + imagePath} width={250} height={250} alt='caterory image'/>}
                </div>
                <div className={styles.content} >
                  <h3>{name}</h3>
                  <Link href={`/catalog/${href}`} ><Button>Смотреть</Button></Link>
                </div>
              </li>
            )
          }
          )}
        </ul>
      </div>
    </div>
  )
}



export default Categories