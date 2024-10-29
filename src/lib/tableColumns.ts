import { formatDate } from '$lib';
import { EMPTY_PLACEHOLDER } from './config';

export const dateColumn = {
	header: 'Date',
	id: 'date',
	accessor: (item: { start_date: string; end_date: string }) => ({
		start_date: item.start_date,
		end_date: item.end_date
	}),
	cell: ({ value }: { value: { start_date: string; end_date: string } }) =>
		formatDate(value.start_date, value.end_date),
	plugins: {
		sort: {
			getSortValue(item: { start_date: string; end_date: string }) {
				return [item.start_date, item.end_date];
			}
		}
	}
};

export const nameColumn = {
	header: 'Name',
	id: 'name',
	accessor: (item: { slug: string; name: string }) => ({ slug: item.slug, name: item.name }),
	plugins: {
		sort: {
			getSortValue(item: { slug: string; name: string }) {
				return item.slug || item.name.toLowerCase();
			}
		}
	}
};

export const alternativeNamesColumn = {
	header: 'Alternative names',
	accessor: 'alternative_names',
	cell: ({ value }: { value: string }) => value ?? EMPTY_PLACEHOLDER,
	plugins: {
		sort: {
			getSortValue(item: string) {
				return (item || '').toLowerCase();
			}
		}
	}
};

export const hasDescriptionColumn = {
	header: 'Bio',
	accessor: 'description',
	cell: ({ value }: { value: string }) => (value ? 'yes' : 'no'),
	plugins: {
		sort: {
			getSortValue(item: string) {
				return (item || '').toLowerCase();
			}
		}
	}
};

export const locationColumn = (placesBySlug: Record<string, Record<string, unknown>>) => ({
	header: 'Location',
	accessor: 'location',
	cell: ({ value }: { value: string }) => (value ? placesBySlug[value]?.name : EMPTY_PLACEHOLDER),
	plugins: {
		sort: {
			getSortValue(item: string) {
				return (item || '').toLowerCase();
			}
		}
	}
});

export const statusColumn = {
	header: 'Status',
	accessor: 'draft',
	cell: ({ value }: { value: boolean }) => (value ? 'draft' : 'edited'),
	plugins: {
		sort: {
			getSortValue(item: boolean) {
				return item ? 0 : 1;
			}
		}
	}
};
