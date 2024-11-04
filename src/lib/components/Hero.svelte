<script lang="ts">
	import * as config from '../config';
	import heroImg from '$images/hero.webp';
	import { base } from '$app/paths';
</script>

<section class="hero">
	<div class="hero-welcome">
		<h1 class="hero-title">
			<div>{config.hero.title}</div>
		</h1>
		<p class="hero-message">
			{config.hero.message}
		</p>
		<a href="{base}/about">
			<button>Learn more</button>
		</a>
	</div>
	<picture class="hero-img">
		<img src={heroImg} alt="A drawing ot the King's College Strand building" />
	</picture>
</section>

<style>
	.hero {
		display: grid;
		align-items: center;
		grid-template-columns: 1fr 1fr;
		grid-template-rows: calc(100vh - var(--header-height));
		justify-items: center;
		margin-block: 0;
	}


	.hero-welcome {
		padding-right: var(--size-9);
	}

	.hero-title {
		display: grid;
		font-size: var(--font-size-6);
		animation:fadeInUp 2s ease backwards;
	}

	.hero-message {
		font-family: var(--font-serif);
		font-size: var(--font-size-3);
		padding-block: var(--size-5);
		animation:fadeInUp 3s ease backwards;
	}

	.hero-welcome a button{
		animation:fadeInUp 4s ease backwards;
		font-size: var(--font-size-2);
	}

	.hero-welcome a:hover{
			opacity: 1;
		}

	.hero-img {
		align-self: stretch;
		height: 100%;
		overflow: hidden;
		width: 100%;
		animation:fadeInUp 1s ease backwards;
	}

	.hero-img img {
		height: 100%;
		object-fit: cover;
		object-position: center;
		transform: scale(1.7);
		width: 100%;
	}

	@keyframes fadeInUp{
		0%{transform:translate(0px, 100px); opacity: 0;}
		20%{opacity: 0;}
		100%{transform:translate(0px, 0); opacity: 1;}
	}

	@media (max-width: 768px) {
		.hero {
			grid-template-rows: 1fr 1fr;
			grid-template-columns: 1fr;
		}

		.hero-welcome{
			margin: var(--size-6) 0;
			padding:0;
		}

		.hero-title {
			font-size: var(--font-size-5);
		}
	}
</style>
