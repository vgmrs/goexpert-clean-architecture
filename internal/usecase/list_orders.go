package usecase

import (
	"github.com/devfullcycle/20-CleanArch/internal/entity"
)

type ListOrdersUseCase struct {
	OrderRepository entity.OrderRepositoryInterface
}

func NewListOrdersUseCase(
	OrderRepository entity.OrderRepositoryInterface,
) *ListOrdersUseCase {
	return &ListOrdersUseCase{
		OrderRepository: OrderRepository,
	}
}

func (l *ListOrdersUseCase) Execute() ([]OrderOutputDTO, error) {
	orders, err := l.OrderRepository.List()
	if err != nil {
		return nil, err
	}

	var dto []OrderOutputDTO
	for _, order := range orders {
		dto = append(dto, OrderOutputDTO{
			order.ID,
			order.Price,
			order.Tax,
			order.FinalPrice,
		})
	}

	return dto, nil
}
