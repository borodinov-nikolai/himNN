export interface IMetadata {
    data: Data
    meta: Meta
  }
  
  export interface Data {
    id: number
    attributes: Attributes
  }
  
  export interface Attributes {
    createdAt: string
    updatedAt: string
    publishedAt: string
    seo: Seo
  }
  
  export interface Seo {
    id: number
    title: string
    description: string
    keywords: string
  }
  
  export interface Meta {}
  