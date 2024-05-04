import React from 'react'
import styles from './CatalogPage.module.scss'
import Breadcrumb from '@/shared/ui/breadcrumb'
import { getAllCategories } from '@/entities/category'
import Image from 'next/image'
import { imageUrl } from '@/entities/image'
import Link from 'next/link'


export const CatalogPage = async () => {
  const categories = await getAllCategories()
  return (
    <main className={styles.root} >
      <div className="container">
        <Breadcrumb items={[{title: 'Каталог'}]} />
        <h1 className={styles.title} >Все товары</h1>
        <ul className={styles.list} >
          {categories?.data?.map(({id, attributes})=> {
              const {name, href, image} = attributes
              const imageHref = image?.data?.attributes?.url
            return (
                <li className={styles.listItem} key={id} >
                  <Link href={`/catalog/${href}`} >
                    <div className={styles.imageHolder} >
                      {imageHref && <Image src={imageUrl + imageHref } width={280} height={280} alt='category image' />}
                    </div>
                      <div className={styles.content} >
                        <p>{name}</p>
                      </div>
                  </Link>
                </li>              
            )
          }
          
          )}
        </ul>
      </div>
    </main>
  )
}
