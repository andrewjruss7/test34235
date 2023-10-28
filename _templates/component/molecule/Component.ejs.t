---
to: src/components/molecules/<%= name %>/<%= name %>.tsx
---
import React from 'react';

export interface <%= name %>Props {}

const <%= name %>: React.FC<<%= name %>Props> = () => {
  return <div>It works!</div>;
};

export default <%= name %>;