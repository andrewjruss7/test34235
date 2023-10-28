---
to: src/components/layouts/<%= name %>Layout/<%= name %>Layout.tsx
---
import React from 'react';
import classNames from 'classnames';

export interface <%= name %>LayoutProps extends React.HTMLAttributes<HTMLDivElement> {}

const <%= name %>Layout: React.FC<<%= name %>LayoutProps> = ({ className }) => {
  return <div className={classNames(className)}></div>;
};

export default <%= name %>Layout;