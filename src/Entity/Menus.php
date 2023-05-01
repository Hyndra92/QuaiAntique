<?php

namespace App\Entity;

use App\Repository\MenusRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: MenusRepository::class)]
class Menus
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 255)]
    private ?string $name = null;

    #[ORM\Column(length: 255)]
    private ?string $description = null;

    #[ORM\Column(length: 255)]
    private ?string $price = null;

    #[ORM\ManyToMany(targetEntity: Plats::class, inversedBy: 'menuses')]
    private Collection $entrees;

    #[ORM\JoinTable(name: 'menuprincipale')]
    #[ORM\ManyToMany(targetEntity: Plats::class, inversedBy: 'menuses')]
    private Collection $principale;

    #[ORM\JoinTable(name: 'menudesserts')]
    #[ORM\ManyToMany(targetEntity: Plats::class, inversedBy: 'menuses')]
    private Collection $desserts;

    public function __toString()
    {
        return $this->getName();
    }

    public function __construct()
    {
        $this->entrees = new ArrayCollection();
        $this->principale = new ArrayCollection();
        $this->desserts = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getName(): ?string
    {
        return $this->name;
    }

    public function setName(string $name): self
    {
        $this->name = $name;

        return $this;
    }

    public function getDescription(): ?string
    {
        return $this->description;
    }

    public function setDescription(string $description): self
    {
        $this->description = $description;

        return $this;
    }

    public function getPrice(): ?string
    {
        return $this->price;
    }

    public function setPrice(string $price): self
    {
        $this->price = $price;

        return $this;
    }

    /**
     * @return Collection<int, Plats>
     */
    public function getEntrees(): Collection
    {
        return $this->entrees;
    }

    public function addEntree(Plats $entree): self
    {
        if (!$this->entrees->contains($entree)) {
            $this->entrees->add($entree);
        }

        return $this;
    }

    public function removeEntree(Plats $entree): self
    {
        $this->entrees->removeElement($entree);

        return $this;
    }

    /**
     * @return Collection<int, Plats>
     */
    public function getPrincipale(): Collection
    {
        return $this->principale;
    }

    public function addPrincipale(Plats $principale): self
    {
        if (!$this->principale->contains($principale)) {
            $this->principale->add($principale);
        }

        return $this;
    }

    public function removePrincipale(Plats $principale): self
    {
        $this->principale->removeElement($principale);

        return $this;
    }

    /**
     * @return Collection<int, Plats>
     */
    public function getDesserts(): Collection
    {
        return $this->desserts;
    }

    public function addDessert(Plats $dessert): self
    {
        if (!$this->desserts->contains($dessert)) {
            $this->desserts->add($dessert);
        }

        return $this;
    }

    public function removeDessert(Plats $dessert): self
    {
        $this->desserts->removeElement($dessert);

        return $this;
    }
}
