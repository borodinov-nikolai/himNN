import type { Meta, StoryObj } from "@storybook/react";

import Button from "./";

const meta: Meta<typeof Button> = {
  title: "Button",
  component: Button,
  parameters: {
    layout: "centered",
  },




   
     
  args: {
    children: 'Button',
  },
};

export default meta;
type Story = StoryObj<typeof Button>;

export const button: Story = {
  args: {
   
  }
};

