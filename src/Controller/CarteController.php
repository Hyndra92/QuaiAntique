<?php

namespace App\Controller;

use App\Entity\Parameters;
use App\Repository\MenusRepository;
use App\Repository\PlatsRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class CarteController extends AbstractController
{
    public function __construct(EntityManagerInterface $entityManager){
        $this->entityManager = $entityManager;
    }
    #[Route('/carte', name: 'app_carte')]
    public function index(PlatsRepository $platsRepository, MenusRepository $menusRepository): Response
    {
        $param = $this->entityManager->getRepository(Parameters::class)->findById('1');
        return $this->render('carte/index.html.twig', [
            'controller_name' => 'CarteController',
            'entrees' => $platsRepository->findBy(['Type' => 'Entrée']),
            'plats' => $platsRepository->findBy(['Type' => 'Plat principal']),
            'desserts' => $platsRepository->findBy(['Type' => 'dessert']),
            'Vins' => $platsRepository->findBy(['Type' => 'Vin']),
            'Sodas' => $platsRepository->findBy(['Type' => 'Soda']),
            'Eaux' => $platsRepository->findBy(['Type' => 'Eau']),
            'menus' => $menusRepository->findAll(),
            'param' => $param,

        ]);
    }
}
