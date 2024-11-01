import { formatEventDate } from '$lib';
import { handleLoadError } from '$lib/errorHandling';
import {
	getEventEntities,
	getRecord,
	getRecordMoments,
	getRecordSources,
	getRecordUrls
} from '$lib/supabase';
import type { Event, Moment } from '$lib/types';
import { compile } from 'mdsvex';

export async function load({ params, parent }) {
	const { slug } = params;
	try {
		const parentData = await parent();
		const placesBySlug = parentData.placesBySlug;

		const source = 'event';
		const event = (await getRecord(source, slug)) as Event;

		const meta = {
			Date: formatEventDate(event),
			Type: event.event_type,
			Location: event?.location && placesBySlug[event.location]
		};

		const description = await compile(event?.description || '');
		const people = await getEventEntities(slug, 'person');
		const organisations = await getEventEntities(slug, 'organisation');
		const sources = await getRecordSources(source, slug);
		const urls = await getRecordUrls(source, slug);

		const eventMoments = await getRecordMoments(source, slug);
		const parentMoments = parentData.moments;

		const moments = parentMoments.filter((moment: Moment) =>
			eventMoments?.some((em) => parseInt(em.moment) === moment.n)
		);

		return {
			_metadata: {
				title: event.name,
				excerpt: `Explore the event ${event.name}`,
				tags: 'database, events'
			},
			event,
			title: event.name,
			meta,
			description: description?.code,
			people,
			organisations,
			moments,
			sources,
			urls
		};
	} catch (e) {
		handleLoadError(slug, e);
	}
}
