<script lang="ts">
	import EntityIndex from '$lib/components/EntityIndex.svelte';
	import * as config from '$lib/config';
	import {
		locationColumn,
		nameColumn,
		alternativeNamesColumn,
		statusColumn
	} from '$lib/tableColumns';

	export let data;

	const label = 'organisations';
	const { _metadata, collection, url, placesBySlug } = data;

	const columns = [
		{ header: 'Slug', accessor: 'slug' },
		nameColumn,
		alternativeNamesColumn,
		{ header: 'Type', accessor: 'organisation_type' },
		locationColumn(placesBySlug),
		{
			header: 'Founding date',
			accessor: 'founding_date',
			cell: ({ value }: { value: string }) =>
				value ? new Date(value).toLocaleDateString() : config.EMPTY_PLACEHOLDER,
			plugins: {
				sort: {
					getSortValue(item: string) {
						return item || '';
					}
				}
			}
		},
		{
			header: 'Dissolution date',
			accessor: 'dissolution_date',
			cell: ({ value }: { value: string }) =>
				value ? new Date(value).toLocaleDateString() : config.EMPTY_PLACEHOLDER,
			plugins: {
				sort: {
					getSortValue(item: string) {
						return item || '';
					}
				}
			}
		},
		statusColumn
	];
	const sortBy = { initialSortKeys: [{ id: 'name', order: 'asc' }] };

	$: descriptionCount = collection.filter((o) => o.description).length;
	$: descriptionPercentage = ((descriptionCount / collection.length) * 100).toFixed(1);
	$: alternativeNamesCount = collection.filter((o) => o.alternative_names).length;
	$: alternativeNamesPercentage = ((alternativeNamesCount / collection.length) * 100).toFixed(1);

	$: typeDistribution = Object.entries(
		collection.reduce(
			(acc, o) => {
				const type = o.organisation_type ?? config.EMPTY_PLACEHOLDER;
				acc[type] = (acc[type] || 0) + 1;
				return acc;
			},
			{} as Record<string, number>
		)
	)
		.map(([type, count]: [string, number]) => ({ type, count }))
		.sort((a, b) => b.count - a.count)
		.map((item) => ({
			...item,
			percentage: ((item.count / collection.length) * 100).toFixed(1)
		}));

	$: locationCount = [...new Set(collection.map((o) => o.location))].filter(Boolean).length;
</script>

<article>
	<header>
		<hgroup>
			<h1>Organisations</h1>
			<p>{_metadata.excerpt}</p>
		</hgroup>
	</header>

	<section>
		<hgroup>
			<h2>Summary</h2>
			<p>
				The database currently contains <strong>{collection.length.toLocaleString()}</strong>
				documented organisations, with the following characteristics:
			</p>
		</hgroup>

		<div class="summary-grid">
			<article class="card">
				<h3>Completeness</h3>
				<ul>
					<li>
						<strong>{descriptionCount.toLocaleString()}</strong>
						({descriptionPercentage}%) have biographical information
					</li>
					<li>
						<strong>{alternativeNamesCount.toLocaleString()}</strong>
						({alternativeNamesPercentage}%) have recorded alternative names
					</li>
				</ul>
			</article>

			<article class="card">
				<h3>Type distribution</h3>
				<p>
					The database includes organisations with <strong>{typeDistribution.length}</strong> distinct
					types. The most common types are:
				</p>
				<ul>
					{#each typeDistribution.slice(0, 3) as { type, count, percentage }}
						<li>
							<strong>{count.toLocaleString()}</strong> ({percentage}%)
							<em>{type}</em>
						</li>
					{/each}
				</ul>
			</article>

			<article class="card">
				<h3>Location distribution</h3>
				<p>
					The database includes organisations from <strong>{locationCount.toLocaleString()}</strong>
					distinct locations.
				</p>
			</article>
		</div>
	</section>

	<EntityIndex data={collection} {columns} {label} {sortBy} {url} />
</article>

<style>
	section p {
		max-inline-size: unset;
	}

	.summary-grid {
		display: grid;
		grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
		gap: var(--size-3);
		margin: var(--size-3) 0;
	}

	.card {
		background: var(--surface-1);
		color: var(--text-1);
		border: 1px solid var(--border-light);
		box-shadow: var(--shadow-1);
	}

	.card h3 {
		margin-top: 0;
		margin-bottom: var(--size-3);
		border-bottom: 2px solid var(--pearl-grey);
		padding: var(--size-3) var(--size-3) var(--size-2) var(--size-3);
		color: var(--midnight-blue);
		max-inline-size: none;
	}

	.card ul,
	.card p {
		margin: 0;
		padding: var(--size-3);
	}
	.card li {
		padding-bottom: var(--size-2);
	}
</style>
