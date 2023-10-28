---
to: stories/atoms/<%= name %>.stories.tsx
---
import '@/styles/tailwind.css';

import { ComponentMeta, ComponentStory } from '@storybook/react';

import <%= name %> from '@/components/atoms/<%= name %>';

export default {
  title: 'atoms/<%= name %>',
  component: <%= name %>,
} as ComponentMeta<typeof <%= name %>>;

const Template: ComponentStory<typeof <%= name %>> = (args) => {
  return <<%= name %> {...args}></<%= name %>>;
};

export const Default = Template.bind({});
Default.args = {};