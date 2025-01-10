import type { Donation, Event } from '$lib/types';

export function formatDonationDate(donation: Donation) {
	return formatDate(donation?.start_date, donation?.end_date);
}

export function formatDate(startDate: string, endDate: string, locale = 'en-GB') {
	if (startDate === endDate) {
		return new Intl.DateTimeFormat(locale).format(new Date(`${startDate}T12:00:00Z`));
	}

	return `${new Intl.DateTimeFormat(locale).format(new Date(`${startDate}T12:00:00Z`))}–${new Intl.DateTimeFormat(locale).format(new Date(`${endDate}T12:00:00Z`))}`;
}

export function formatEventDate(event: Event) {
	return formatDate(event?.start_date, event?.end_date);
}
