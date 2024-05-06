export interface IMeta {
    pagination: Pagination
  }
  
   interface Pagination {
    page: number
    pageSize: number
    pageCount: number
    total: number
  }