import React, { FC } from 'react'
import styles from './ProductPage.module.scss'
import Breadcrumb from '@/shared/ui/breadcrumb'
import { getProduct } from '@/entities/product'
import ProductInfo from '../components/productInfo'
import ProductDescription from '../components/productDescription'




interface IProps {
  productId: string
}


export const ProductPage: FC<IProps> = async ({productId}) => {
const product = await getProduct(productId)
const {category, subcategory, name} = product?.data?.attributes || {}
const {name: categoryName, href: categoryHref} = category?.data?.attributes || {}
const {name: subcategoryName, href: subcategoryHref} = subcategory?.data?.attributes || {}

  return (
    <main className={styles.root} >
      <div className="container">
        <Breadcrumb items={[{title: 'Каталог', href:'/catalog'}, {title: categoryName, href:`/catalog/${categoryHref}`}, {title: subcategoryName, href:`/catalog/${categoryHref}/${subcategoryHref}`}, {title: name}]} />
     
          <h1 className={styles.title} >{name}</h1>

            <div className={styles.productInfo}>
              <ProductInfo product={product}/>
            </div>
            <div className={styles.productDescription}>
              <ProductDescription product={product} />
            </div>
      </div>
    </main>
  )
}
