{if isset($block_blog_entries) && $block_blog_entries}
	<div class="blogroll">
		<div class="row-fluid">
			{foreach $block_blog_entries as $one_blog_entry}
				<div class="span3">
					<div class="blogroll__item">
						<a class="blogroll__item__image" href="{$smarty.const.IA_URL}blog/{$one_blog_entry.id}-{$one_blog_entry.alias}">{printImage imgfile=$one_blog_entry.image alt=$one_blog_entry.title}</a>
						<div class="blogroll__item__title"><a href="{$smarty.const.IA_URL}blog/{$one_blog_entry.id}-{$one_blog_entry.alias}">{$one_blog_entry.title|truncate:35:'...'}</a></div>
						<div class="blogroll__item__summary">
							<p Class="blogroll__item__body">{$one_blog_entry.body|strip_tags|truncate:250:'...':true}</p>
							<p class="blogroll__item__date">{$one_blog_entry.date_added|date_format:$config.date_format}</p>
						</div>
					</div>
				</div>

				{if $one_blog_entry@iteration % 4 == 0}
					</div>
					<div class="row-fluid">
				{/if}
			{/foreach}
		</div>
		<p class="blogroll__more">
			<a href="{$smarty.const.IA_URL}blog/">{lang key='view_all_blog_entries'}</a>
		</p>
	</div>
{else}
	<div class="alert alert-info">{lang key='no_blog_entries'}</div>
{/if}