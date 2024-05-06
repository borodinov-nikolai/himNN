import { IMeta } from "@/entities/meta"

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
    attributes: Attributes3
  }
  
  export interface Attributes3 {
    name: string
    href: string
    createdAt: string
    updatedAt: string
    publishedAt: string
  }