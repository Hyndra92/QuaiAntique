<?php

namespace App\Controller;

use App\Entity\Parameters;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class ContactController extends AbstractController
{
    public function __construct(EntityManagerInterface $entityManager){
        $this->entityManager = $entityManager;
    }
    #[Route('/contact', name: 'app_contact')]
    public function index(): Response
    {
        $param = $this->entityManager->getRepository(Parameters::class)->findById('1');
        return $this->render('contact/index.html.twig', [
            'controller_name' => 'ContactController',
            'param' => $param,
        ]);
    }
}
