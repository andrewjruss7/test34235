---
to: src/hooks/use<%= name %>.ts
---
import { trpc } from '@/utils/trpc';

export default function use<%= name %>() {
  const { data, ...query } = trpc.useQuery(['']);

  return { ...query, <%= h.changeCase.camel(name) %>: data };
}