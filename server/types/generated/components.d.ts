import type { Schema, Attribute } from '@strapi/strapi';

export interface CharacteriscticsCharacteristcic extends Schema.Component {
  collectionName: 'components_characterisctics_characteristcics';
  info: {
    displayName: 'characteristcic';
  };
  attributes: {
    name: Attribute.String & Attribute.Required;
    value: Attribute.Text;
  };
}

export interface CharacteriscticsValue extends Schema.Component {
  collectionName: 'components_characterisctics_values';
  info: {
    displayName: 'value';
  };
  attributes: {
    value: Attribute.String;
  };
}

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

export interface TableTableCell extends Schema.Component {
  collectionName: 'components_table_table_cells';
  info: {
    displayName: 'tableCell';
    description: '';
  };
  attributes: {
    text: Attribute.Text;
    rowSpan: Attribute.Integer;
    colSpan: Attribute.Integer;
  };
}

export interface TableTableRow extends Schema.Component {
  collectionName: 'components_table_table_rows';
  info: {
    displayName: 'tableRow';
    description: '';
  };
  attributes: {
    tableCells: Attribute.Component<'table.table-cell', true>;
  };
}

declare module '@strapi/types' {
  export module Shared {
    export interface Components {
      'characterisctics.characteristcic': CharacteriscticsCharacteristcic;
      'characterisctics.value': CharacteriscticsValue;
      'seo.metadata': SeoMetadata;
      'table.table-cell': TableTableCell;
      'table.table-row': TableTableRow;
    }
  }
}
