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

<?php if (($results)) : ?>
    <?php foreach ($results as $row) : ?>
        &nbsp;
        <div class="container">
            <div class="card">
                <img class="card-img-top" src="<?php echo base_url() . "uploads/$row->filename"; ?>" alt="Card image cap">
                <div class="card-body">
                    <h1 class="text-center card-title"><?php echo $row->title ?></h1>
                    <p><?php echo makeClickableLinks($this->typography->nl2br_except_pre($row->description)); ?></p>
                    <?php if ($row->author_id == $this->session->userdata('user_id')) : ?>
                        <a href="<?php echo base_url() . "articles/edit/" . $row->article_id; ?>" class="btn btn-primary btn-sm"> <i class="material-icons">edit</i>Edit</a>
                        <a href="<?php echo base_url() . "articles/delete/" . $row->article_id; ?>" class="btn btn-danger btn-sm"> <i class="material-icons">delete</i>Delete</a>
                    <?php else : ?>
                        <p class="alert alert-danger text-center" style="width: 50%;">Please login as the author of this tutorial to edit/delete it.</p>
                    <?php endif ?>
                    <p class="alert alert-info mt-3 text-center" style="width: 50%;">Tutorial written by <b><?php echo $row->username ?></b> on <b><?php $date = $row->timedate;
                                                                                                                                                    $newdate = date("F d, Y g:ia", strtotime($date));
                                                                                                                                                    echo $newdate ?></b></p>
                </div>
            </div>
        </div>
    <?php endforeach; ?>
<?php else : ?>
    <p>No results</p>
<?php endif; ?>