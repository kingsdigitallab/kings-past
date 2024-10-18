export const dateColumn = {
	header: 'Date',
	id: 'date',
	accessor: (item: { start_date: Date; end_date: Date }) => ({
		start_date: item.start_date,
		end_date: item.end_date
	}),
	cell: ({ value }: { value: { start_date: Date; end_date: Date } }) => {
		const { start_date, end_date } = value;
		return start_date !== end_date ? `${start_date}–${end_date}` : start_date;
	},
	plugins: {
		sort: {
			getSortValue(item: { start_date: Date; end_date: Date }) {
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
				return item.slug;
			}
		}
	}
};

export const locationColumn = (placesBySlug: Record<string, Record<string, unknown>>) => ({
	header: 'Location',
	accessor: 'location',
	cell: ({ value }: { value: string }) => (value ? placesBySlug[value]?.name : 'N/A'),
	plugins: {
		sort: {
			getSortValue(item: string) {
				return item || '';
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
