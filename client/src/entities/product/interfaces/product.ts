import { IImage } from "@/entities/image"
import { IMeta } from "@/entities/meta"

export interface IProducts {
    data: Data[]
    meta: IMeta
  }

  
export interface IProduct {
    data: Data
    meta: IMeta
  }
  
  export interface Data {
    id: number
    attributes: Attributes
  }
  
  export interface Attributes {
    name: string
    price: number
    createdAt: string
    updatedAt: string
    publishedAt: string
    description: string
    image: IImage
    inStock: boolean
  }