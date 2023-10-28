---
to: stories/molecules/<%= name %>.stories.tsx
---
import '@/styles/tailwind.css';

import { ComponentMeta, ComponentStory } from '@storybook/react';

import <%= name %> from '@/components/molecules/<%= name %>';

export default {
  title: 'molecules/<%= name %>',
  component: <%= name %>,
} as ComponentMeta<typeof <%= name %>>;

const Template: ComponentStory<typeof <%= name %>> = (args) => {
  return <<%= name %> {...args}></<%= name %>>;
};

export const Default = Template.bind({});
Default.args = {};