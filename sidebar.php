<h1>Recent Posts</h1>
<hr />

<ul>
<?php
$stmt = $db->query('SELECT postTitle, postSlug FROM blog_posts_seo ORDER BY postID DESC LIMIT 5');
while($row = $stmt->fetch()){
	echo '<li><a href="'.$row['postSlug'].'">'.$row['postTitle'].'</a></li>';
}
?>
</ul>

<h1>Catgories</h1>
<hr />

<ul>
<?php
$stmt = $db->query('SELECT catTitle, catSlug FROM blog_cats ORDER BY catID DESC');
while($row = $stmt->fetch()){
	echo '<li><a href="c-'.$row['catSlug'].'">'.$row['catTitle'].'</a></li>';
}
?>
</ul>

<h1>Tags</h1>
<hr />

<ul>
<?php
$tagsArray = [];
$stmt = $db->query('select distinct LOWER(postTags) as postTags from blog_posts_seo where postTags != "" group by postTags');
while($row = $stmt->fetch()){
	$parts = explode(',', $row['postTags']);
	foreach ($parts as $tag) {
		$tagsArray[] = $tag;
	}
}

$finalTags = array_unique($tagsArray);
foreach ($finalTags as $tag) {
	echo "<li><a href='t-".$tag."'>".ucwords($tag)."</a></li>";
}
?>
</ul>

<h1>Archives</h1>
<hr />

<ul>
<?php
$stmt = $db->query("SELECT Month(postDate) as Month, Year(postDate) as Year FROM blog_posts_seo GROUP BY Month(postDate), Year(postDate) ORDER BY postDate DESC");
while($row = $stmt->fetch()){
	$monthName = date("F", mktime(0, 0, 0, $row['Month'], 10));
	$slug = 'a-'.$row['Month'].'-'.$row['Year'];
	echo "<li><a href='$slug'>$monthName</a></li>";
}
?>
</ul>