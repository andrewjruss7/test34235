---
to: stories/templates/<%= name %>Template.stories.tsx
---
import '@/styles/tailwind.css';

import { ComponentMeta, ComponentStory } from '@storybook/react';

import <%= name %>Template from '@/components/templates/<%= name %>Template';

export default {
  title: 'templates/<%= name %>Template',
  component: <%= name %>Template,
} as ComponentMeta<typeof <%= name %>Template>;

const Template: ComponentStory<typeof <%= name %>Template> = (args) => {
  return <<%= name %>Template {...args}></<%= name %>Template>;
};

export const Default = Template.bind({});
Default.args = {};