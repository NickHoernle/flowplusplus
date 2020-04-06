import torch
import torchvision
import torchvision.transforms as transforms

# No normalization applied, since model expects inputs in (0, 1)
transform_train = transforms.Compose([
    transforms.RandomHorizontalFlip(),
    transforms.ToTensor()
])

transform_test = transforms.Compose([
    transforms.ToTensor()
])

trainset = torchvision.datasets.CIFAR10(root='data', train=True, download=True, transform=transform_train)
