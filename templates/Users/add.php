<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li><?= $this->Html->link(__('Ingresar'), ['action' => 'login']) ?></li>
        <li><?= $this->Html->link(__('Lista de Articulos'), ['controller' => 'Articles', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('Nuevo Articulo'), ['controller' => 'Articles', 'action' => 'add']) ?></li>
    </ul>
<div class="users form">
<?= $this->Form->create($user) ?>
    <fieldset>
        <legend><?= __('Registrarse') ?></legend>
        <?= $this->Form->input('email') ?>
        <?= $this->Form->input('password') ?>
        <?= $this->Form->control('role', [
            'options' => ['admin' => 'Admin', 'author' => 'Author']
        ]) ?>
   </fieldset>
<?= $this->Form->button(__('Submit')); ?>
<?= $this->Form->end() ?>
</div>