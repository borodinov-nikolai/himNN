import { IImage } from "@/entities/image"



export interface ICategory {
    data: Daum[]
    meta: Meta
  }
  
  export interface Daum {
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
  }


  export interface Meta {
    pagination: Pagination
  }
  
  export interface Pagination {
    page: number
    pageSize: number
    pageCount: number
    total: number
  }