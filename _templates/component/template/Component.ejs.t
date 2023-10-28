---
to: src/components/templates/<%= name %>Template/<%= name %>Template.tsx
---
import React from 'react';
import classNames from 'classnames';

export interface <%= name %>TemplateProps extends React.HTMLAttributes<HTMLDivElement> {}

const <%= name %>Template: React.FC<<%= name %>TemplateProps> = ({ className }) => {
  return <div className={classNames(className)}>It works!</div>;
};

export default <%= name %>Template;