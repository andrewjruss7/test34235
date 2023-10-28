---
to: src/components/organisms/<%= name %>/<%= name %>.tsx
---
import React from 'react';
import classNames from 'classnames';

export interface <%= name %>ContainerProps extends React.HTMLAttributes<HTMLDivElement> {}
export interface <%= name %>Props extends React.HTMLAttributes<HTMLDivElement> {}

const <%= name %>Container: React.FC<<%= name %>ContainerProps> = ({ className }) => {
  return <<%= name %> className={className} />;
};

export const <%= name %>: React.FC<<%= name %>Props> = ({ className }) => {
  return <div className={classNames(className)}>It works!</div>;
}

export default <%= name %>Container;