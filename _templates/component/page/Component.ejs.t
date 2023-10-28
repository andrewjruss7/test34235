---
to: src/components/pages/<%= name %>/<%= name %>.tsx
---
import AppTemplate from '@/components/templates/AppTemplate';
import React from 'react';
import Typography from '@/components/atoms/Typography';
import VerticalLayout from '@/components/layouts/VerticalLayout';

export interface <%= name %>Props {}

const <%= name %>: React.FC<<%= name %>Props> = () => {
  return (
    <AppTemplate>
      <VerticalLayout>
        <Typography variant="heading1">It works!</Typography>
      </VerticalLayout>
    </AppTemplate>
  );
};

export default <%= name %>;
