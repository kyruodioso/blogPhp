<h1>Edit Article</h1>
<?php
    echo $this->Form->create($article);
    echo $this->Form->input('title');
    echo $this->Form->textArea('body');
    echo $this->Form->control('category_id', ['options' => $categories, 'empty' => true]);
    echo $this->Form->button(__('Guardar artículo'));
    echo $this->Form->end();
?>