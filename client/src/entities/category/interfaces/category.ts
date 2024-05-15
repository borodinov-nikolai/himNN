import { IImage } from "@/entities/image"
import { IMeta } from "@/entities/meta"
import { IProducts } from "@/entities/product"
import { ISubcategories } from "@/entities/subcategory"



export interface ICategories {
    data: Data[]
    meta: IMeta
  }

export interface ICategory {
    data: Data
    mete: IMeta
  }
  
  export interface Data {
    id: number
    attributes: Attributes
  }
  
  export interface Attributes {
    name: string
    createdAt: string
    updatedAt: string
    publishedAt: string
    href: string
    image: IImage
    subcategories: ISubcategories
    description: string
    products: IProducts
  }


