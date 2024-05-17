export interface ITables {
    data: Data[]
  }

  export interface ITable {
    data: Data
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
    headerRows: TableRow[]
    bodyRows: TableRow[]
  }
  
  export interface TableRow {
    id: number
    tableCells: TableCell[]
  }
  
  export interface TableCell {
    id: number
    text?: string
    rowSpan?: number
    colSpan?: number
  }