export const dateColumn = {
	header: 'Date',
	id: 'date',
	accessor: (item: { start_date: string; end_date: string }) => ({
		start_date: item.start_date,
		end_date: item.end_date
	}),
	cell: ({ value }: { value: { start_date: string; end_date: string } }) => {
		const { start_date, end_date } = value;
		return start_date !== end_date
			? `${new Date(start_date).toLocaleDateString()}–${new Date(end_date).toLocaleDateString()}`
			: new Date(start_date).toLocaleDateString();
	},
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
