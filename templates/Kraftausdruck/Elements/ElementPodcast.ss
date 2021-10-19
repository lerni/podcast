<% include App/Includes/ElementTitle %>
<% if not $isFullWidth %><div class="inner"><% end_if %>
<% if $Items %>
	<div class="podcasts">
		<% loop $Items %>
			<a href='{$AbsoluteLink}' class="podcast">
				<div class="txt">
					<% if $Title %><h2>$Title</h2><% end_if %>
					<% if $Subtitle %><h3>$Subtitle</h3><% end_if %>
					<% if $Author %><p class="author">Von <% loop $Author.PerLineText %>$Item.Plain.RAW<% if not $Last %>, <% end_if %><% end_loop %><% end_if %></p>
					<% if $Description %>$Description<% end_if %>
				</div>
				<p class="pseudolink"><%t Kraftausdruck\Elements\ElementPodcast.MORE "Zum Podcast" %></p>
			</a>
		<% end_loop %>
	</div>
<% else %>
	<div class="no-vacancies">
		{$NoPodcasts}
	</div>
<% end_if %>
$PodcastSeries.PodcastSeriesSchema.RAW
<% if not $isFullWidth %></div><% end_if %>
