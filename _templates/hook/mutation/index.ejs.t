---
to: src/hooks/use<%= name %>.ts
---
import { trpc } from '@/utils/trpc';

export default function use<%= name %>() {
  const { invalidateQueries } = trpc.useContext();

  const { mutateAsync, ...mutation } = trpc.useMutation('', {
    onSuccess: (data) => {
      invalidateQueries('');
    },
  });

  return { ...mutation, <%= h.changeCase.camel(name) %>: mutateAsync };
}