<?php

namespace App\Controller;

use App\Entity\Parameters;
use App\Entity\Reservation;
use App\Repository\GalleryRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class AccueilController extends AbstractController
{
    public function __construct(EntityManagerInterface $entityManager){
        $this->entityManager = $entityManager;
    }
    #[Route('/', name: 'app_accueil')]
    public function index(): Response


    {
        $param = $this->entityManager->getRepository(Parameters::class)->findById('1');
        return $this->render('accueil/index.html.twig', [
            'controller_name' => 'Accueil',
            'param' => $param,
        ]);
    }
}
