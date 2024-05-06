import { IMeta } from "@/entities/meta"

export interface IFilters {
    data: Data[]
    meta: IMeta
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
    values: Value[]
  }
  
  export interface Value {
    id: number
    value: string
  }