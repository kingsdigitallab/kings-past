<script lang="ts">
	import * as config from '$lib/config';
	import IndexTable from '$lib/components/IndexTable.svelte';

	export let data;

	const { collection, url } = data;
	const label = 'donations';

	const columns = [
		{
			header: 'Date',
			id: 'date',
			accessor: (item) => ({ start_date: item.start_date, end_date: item.end_date }),
			cell: ({ value }) => {
				const { start_date, end_date } = value;
				return start_date !== end_date ? `${start_date} - ${end_date}` : start_date;
			},
			plugins: {
				sort: {
					getSortValue(item) {
						return [item.start_date, item.end_date];
					}
				}
			}
		},
		{
			header: 'Name',
			id: 'name',
			accessor: (item) => ({ slug: item.slug, name: item.name }),
			plugins: {
				sort: {
					getSortValue(item: { slug: string; name: string }) {
						return item.slug;
					}
				}
			}
		},
		{
			header: 'Location',
			accessor: 'location',
			cell: ({ value }) =>
				value
					?.split('-')
					.slice(0, -1)
					.map((word: string) => word.charAt(0).toUpperCase() + word.slice(1))
					.join(' ') || 'N/A',
			plugins: {
				sort: {
					getSortValue(item: string) {
						return item ?? '';
					}
				}
			}
		},
		{
			header: 'Price',
			accessor: 'price',
			cell: ({ value, row }) => `${value.toLocaleString()} ${row.original.currency}`
		}
	];
</script>

<svelte:head>
	<title>Donations | {config.title}</title>
</svelte:head>

<article>
	<header>
		<h1>Donations</h1>
	</header>

	<IndexTable data={collection} {label} {columns} {url} />
</article>
