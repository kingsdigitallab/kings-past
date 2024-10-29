import type { Donation, Event } from '$lib/types';

export function formatDonationDate(donation: Donation) {
	return formatDate(donation.start_date, donation.end_date);
}

export function formatDate(startDate: string, endDate: string) {
	return startDate !== endDate
		? `${new Date(startDate).toLocaleDateString()}–${new Date(endDate).toLocaleDateString()}`
		: new Date(startDate).toLocaleDateString();
}

export function formatEventDate(event: Event) {
	return formatDate(event.start_date, event.end_date);
}
