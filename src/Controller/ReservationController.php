<?php

namespace App\Controller;

use App\Entity\Parameters;
use App\Entity\Reservation;
use App\Form\ReservationType;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class ReservationController extends AbstractController
{
    public function __construct(EntityManagerInterface $entityManager)
    {
        $this->entityManager = $entityManager;
    }

    #[Route('/reservation', name: 'reservation_create')]
    public function index(Request $request) : Response
    {
        $param = $this->entityManager->getRepository(Parameters::class)->findById('1');
        $user = $this->getUser();
        $reservation = new Reservation();
        $form = $this->createForm(ReservationType::class, $reservation);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            if ($user){
                $reservation->setUser($user);
            }
            $data = $form->getData();
            $seats = $reservation->getNumberOfSeats();
            $this->entityManager->persist($reservation);
            $this->entityManager->flush();
            $this->addFlash('success' , 'La réservation à bien été prise en compte.');
            return $this->redirectToRoute('reservation_create');


            //$this->addFlash('success');

        }

        return $this->render('reservation/index.html.twig', [
            'reservationType' => $form->createView(),
            'param' => $param,
        ]);
    }
}



