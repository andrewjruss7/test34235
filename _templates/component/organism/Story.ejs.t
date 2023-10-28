---
to: stories/organisms/<%= name %>.stories.tsx
---
import '@/styles/tailwind.css';

import { ComponentMeta, ComponentStory } from '@storybook/react';

import <%= name %> from '@/components/organisms/<%= name %>';

export default {
  title: 'Organisms/<%= name %>',
  component: <%= name %>,
} as ComponentMeta<typeof <%= name %>>;

const Template: ComponentStory<typeof <%= name %>> = (args) => {
  return <<%= name %> {...args}></<%= name %>>;
};

export const Default = Template.bind({});
Default.args = {};