import { ICategory } from "@/entities/category"
import { IImage } from "@/entities/image"
import { IMeta } from "@/entities/meta"
import { ISubcategory } from "@/entities/subcategory"

export interface IProducts {
    data: Data[]
    meta?: IMeta
  }

  
export interface IProduct {
    data: Data
    meta?: IMeta
  }
  
  export interface Data {
    id: number
    attributes: Attributes
  }
  
  export interface Attributes {
    name: string
    priceUnits:string
    price: number
    createdAt: string
    updatedAt: string
    publishedAt: string
    description: string
    subcategory: ISubcategory
    category: ICategory
    image: IImage
    inStock: boolean
  }