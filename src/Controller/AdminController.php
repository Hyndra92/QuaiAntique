<?php

namespace App\Controller;

use App\Entity\Parameters;
use App\Repository\ReservationRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class AdminController extends AbstractController
{
    public function __construct(EntityManagerInterface $entityManager){
        $this->entityManager = $entityManager;
    }
    #[Route('/adminPage', name: 'app_reservation')]
    public function index(ReservationRepository $reservationRepository): Response
    {

        $param = $this->entityManager->getRepository(Parameters::class)->findById('1');
        return $this->render('admin/index.html.twig', [
            'controller_name' => 'AdminController',
            'reservations' => $reservationRepository->findAll(),
            'param' => $param,
        ]);
    }

}
