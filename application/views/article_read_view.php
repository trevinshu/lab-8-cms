<br>
<h1 class="text-center">Lab 8: CMS - How to build a basic Bootstrap Landing page.</h1>
<?php
function makeClickableLinks($text)
{
    $text = " " . $text; // fixes problem of not linking if no chars before the link
    $text = preg_replace(
        '/(((f|ht){1}tps?:\/\/)[-a-zA-Z0-9@:%_\+.~#?&\/\/=]+)/i',
        '<a href="\\1">\\1</a>',
        $text
    );
    $text = preg_replace(
        '/([[:space:]()[{}])(www.[-a-zA-Z0-9@:%_\+.~#?&\/\/=]+)/i',
        '\\1<a href="http://\\2">\\2</a>',
        $text
    );
    $text = preg_replace(
        '/([_\.0-9a-z-]+@([0-9a-z][0-9a-z-]+\.)+[a-z]{2,3})/i',
        '<a href="mailto:\\1">\\1</a>',
        $text
    );
    return trim($text);
} // end makeClickableLinks
?>
<br>
<?php if (($results)) : ?>
    &nbsp;
    <div class="container">
        <div class="row">
            <?php foreach ($results as $row) : ?>
                <div class="card col-lg-6 col-md-6 col-sm-6 col-xs-6">
                    <img class="card-img-top" src="<?php echo base_url() . "thumbnails/$row->filename"; ?>" alt="">
                    <div class="card-body">
                        <h1 class="card-title"><?php echo $row->title ?></h1>
                        <p><?php echo makeClickableLinks(substr($row->description, 0, 200)) ?></p>
                        <a href="<?php echo base_url() . "articles/detail/" . $row->article_id; ?>" class="btn btn-primary">Read more</a>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
        &nbsp;
    </div>
<?php endif; ?>