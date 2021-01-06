
<h1>Artículos</h1>

<div class="actions columns large-2 medium-3">
    <ul class="side-nav">
        <li><?= $this->Html->link(
    'Buscar por Categorias',
    ['controller' => 'Categories', 'action' => 'index']
) ?></li>
    </ul>
</div>

<?= $this->Html->link(
    'Añadir artículo',
    ['controller' => 'Articles', 'action' => 'add']
) ?>
<table>
    <tr>
        <th>Id</th>
        <th>Titulo</th>
        <th>Creado</th>
        <th>Acciones</th>
    </tr>

    <!-- Aquí es donde iteramos nuestro objeto de consulta $articles, mostrando en pantalla la información del artículo -->
<div>
    <?php foreach ($articles as $article): ?>
    <tr>
        <td><?= $article->id ?></td>

        <td>
            <?= $this->Html->link($article->title,
            ['controller' => 'Articles', 'action' => 'view', $article->id]) ?>
        </td>
        <td><?= $article->created->format("d/m/Y") ?></td>
        <td>
        <?= $this->Form->postLink(
                'Eliminar',
                ['action' => 'delete', $article->id],
                ['confirm' => '¿Estás seguro?'])
            ?>
            <?= $this->Html->link('Editar', ['action' => 'edit', $article->id]) ?>
        </td>
    </tr>
    <?php endforeach; ?>
</table>
<div class="paginator">
        <ul class="pagination">
            <?= $this->Paginator->prev('< ' . __('previous')) ?>
            <?= $this->Paginator->numbers() ?>
            <?= $this->Paginator->next(__('next') . ' >') ?>
        </ul>
        <p><?= $this->Paginator->counter() ?></p>
    </div>
    </div>
                      
