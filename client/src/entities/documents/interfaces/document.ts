export interface IDocuments {
    data?: Data[]
  }

 export interface IDocument {
    data?: Data[]
 }
  
  export interface Data {
    id: number
    attributes: Attributes
  }
  
  export interface Attributes {
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