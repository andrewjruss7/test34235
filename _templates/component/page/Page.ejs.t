---
to: src/pages/<%= name[0].toLowerCase() + name.slice(1, name.length).replace(/[A-Z]/g, letter => `-${letter.toLowerCase()}`) %>.tsx
---
import <%= name %> from '@/components/pages/<%= name %>';
import React from 'react';
import { type NextPage } from 'next/types';

const <%= name %>Page: NextPage = () => {
  return <<%= name %> />;
};

export default <%= name %>Page;