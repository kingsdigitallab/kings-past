import type { Event } from '$lib/types';

export function getEventDate(event: Event) {
	return event.start_date !== event.end_date
		? `${new Date(event.start_date).toLocaleDateString()}–${new Date(event.end_date).toLocaleDateString()}`
		: new Date(event.start_date).toLocaleDateString();
}
