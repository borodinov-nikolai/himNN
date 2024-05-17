import { IImage } from "@/entities/image"
import { IMeta } from "@/entities/meta"
import { ITables } from "@/entities/table"

export interface ISubcategories {
    data: Data[]
    meta: IMeta
  }

  export interface ISubcategory {
    data: Data
    meta: IMeta
  } 
  
  export interface Data {
    id: number
    attributes: Attributes
  }
  
  export interface Attributes {
    name: string
    href: string
    image: IImage
    description: string
    tables: ITables
    createdAt: string
    updatedAt: string
    publishedAt: string
  }