import type { Meta, StoryObj } from "@storybook/react";

import button from "./";

const meta: Meta<typeof button> = {
  title: "Button",
  component: button,
  parameters: {
    layout: "centered",
  },
  args: {
    children: 'Button',
    width: '400px',
    height: '45px'
  },
};

export default meta;
type Story = StoryObj<typeof button>;

export const Button: Story = {
  args: {
   
  }
};

