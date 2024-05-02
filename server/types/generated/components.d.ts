import type { Schema, Attribute } from '@strapi/strapi';

export interface SeoMetadata extends Schema.Component {
  collectionName: 'components_seo_metadata';
  info: {
    displayName: 'Metadata';
    icon: 'search';
    description: '';
  };
  attributes: {
    title: Attribute.Text;
    description: Attribute.Text;
    keywords: Attribute.Text;
  };
}

declare module '@strapi/types' {
  export module Shared {
    export interface Components {
      'seo.metadata': SeoMetadata;
    }
  }
}
