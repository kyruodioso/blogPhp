<?php
declare(strict_types=1);

namespace App\Controller;

use App\Controller\AppController;
use Cake\Event\EventInterface;

// Prior to 3.6 use Cake\Network\Exception\NotFoundException
use Cake\Http\Exception\NotFoundException;

class UsersController extends AppController
{


    public function beforeFilter(EventInterface $event)
    {
        parent::beforeFilter($event);
        $this->Auth->allow(['add','logout']);
    }

    public function index()
    {
       $this->set('users', $this->Users->find('all'));
   }

   public function view($id)
   {
       if (!$id) {
           throw new NotFoundException(__('Usuario inválido'));
       }

       $user = $this->Users->get($id);
       $this->set(compact('user'));
   }

   public function add()
   {
       $user = $this->Users->newEmptyEntity();
       if ($this->request->is('post')) {
           $user = $this->Users->patchEntity($user, $this->request->getData());
           if ($this->Users->save($user)) {
               $this->Flash->success(__('Usuario guardado con éxito.'));
               return $this->redirect(['action' => 'login']);
           }
           $this->Flash->error(__('Error al guardar al usuario.'));
       }
       $this->set('user', $user);
   }

public function login()
{
    
    if ($this->request->is('post')) {
        $user = $this->Auth->identify();
        if ($user) {
            $this->Auth->setUser($user);
            return $this->redirect($this->Auth->redirectUrl());
        }else
        {$this->Flash->error(__('Email o contraseñas inválidos',['key' =>'auth']));}
    }
}

public function logout()
{
    return $this->redirect($this->Auth->logout());
}



}