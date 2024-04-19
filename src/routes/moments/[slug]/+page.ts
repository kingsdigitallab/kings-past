import { error } from '@sveltejs/kit'
import { getMoments } from '$lib/moments.js';

export async function load({ params, fetch }) {
  try {
    const moment = await import(`../../../moments/${params.slug}/index.md`)

	  const moments = await getMoments();

    return {
      meta: moment.metadata,
      content: moment.default,
      moments: moments
    }

  } catch (e) {
    error(404, `Could not find ${params.slug}`)
  }
}
