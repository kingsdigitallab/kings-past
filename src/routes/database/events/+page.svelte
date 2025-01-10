<script lang="ts">
	import { dateColumn, nameColumn, locationColumn, statusColumn } from '$lib/tableColumns';
	import EntityIndex from '$lib/components/EntityIndex.svelte';

	export let data;

	const label = 'events';
	const { _metadata, collection, url, placesBySlug } = data;

	const columns = [
		nameColumn,
		dateColumn,
		{
			header: 'Type',
			accessor: 'event_type'
		},
		locationColumn(placesBySlug),
		statusColumn
	];
	const sortBy = { initialSortKeys: [{ id: 'date', order: 'asc' }] };

	$: descriptionCount = collection.filter((item) => item.description).length;
	$: descriptionPercentage = ((descriptionCount / collection.length) * 100).toFixed(1);

	$: eventDateSpan = {
		minStart: Math.min(...collection.map((item) => new Date(item.start_date).getTime())),
		maxEnd: Math.max(...collection.map((item) => new Date(item.end_date).getTime()))
	};

	$: totalDateSpan = Math.floor(
		(eventDateSpan.maxEnd - eventDateSpan.minStart) / (1000 * 60 * 60 * 24 * 365.25)
	);

	$: typeDistribution = Object.entries(
		collection.reduce(
			(acc, item) => {
				const type = item.event_type;
				acc[type] = (acc[type] || 0) + 1;
				return acc;
			},
			{} as Record<string, number>
		)
	)
		.map(([type, count]) => ({ type, count }))
		.sort((a, b) => b.count - a.count)
		.map((item) => ({
			...item,
			percentage: ((item.count / collection.length) * 100).toFixed(1)
		}));

	$: locationCount = [...new Set(collection.map((item) => item.location))].filter(Boolean).length;
</script>

<article>
	<header>
		<hgroup>
			<h1>Events</h1>
			<p>{_metadata.excerpt}</p>
		</hgroup>
	</header>

	<section>
		<hgroup>
			<h2>Summary</h2>
			<p>
				The database currently contains <strong>{collection.length.toLocaleString()}</strong>
				documented events, with the following characteristics:
			</p>
		</hgroup>

		<div class="summary-grid">
			<article class="card">
				<h3>Completeness</h3>
				<ul>
					<li>
						<strong>{descriptionCount.toLocaleString()}</strong>
						({descriptionPercentage}%) have descriptions
					</li>
					<li>
						The event date span is <strong>{totalDateSpan.toLocaleString()}</strong> years.
					</li>
				</ul>
			</article>

			<article class="card">
				<h3>Type distribution</h3>
				<p>
					The database includes events with <strong>{typeDistribution.length}</strong> distinct types.
					The most common types are:
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
					The database includes events from <strong>{locationCount.toLocaleString()}</strong>
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
