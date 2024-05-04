import type { Meta, StoryObj } from "@storybook/react";

import breadcrumb from "./";

const meta: Meta<typeof breadcrumb> = {
  title: "Breadcrumb",
  component: breadcrumb,
  parameters: {
    layout: "centered",
  },
  args: {
    items: [
        {
            title: "страница 1",
            href: '/page1'
        },
        {
            title: "страница 2",
        },
    ]
  },
};

export default meta;
type Story = StoryObj<typeof breadcrumb>;

export const Breadcrumb: Story = {
  args: {
  
  },
};
