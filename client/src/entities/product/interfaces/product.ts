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
    documents: Documents
    inStock: boolean
  }

  export interface Documents {
    data?: Data2[]
  }
  
  export interface Data2 {
    id: number
    attributes: Attributes2
  }
  
  export interface Attributes2 {
    name: string
    alternativeText: any
    caption: any
    width: any
    height: any
    formats: any
    hash: string
    ext: string
    mime: string
    size: number
    url: string
    previewUrl: any
    provider: string
    provider_metadata: any
    createdAt: string
    updatedAt: string
  }