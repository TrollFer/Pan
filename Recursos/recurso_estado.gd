extends Resource
class_name Recurso_estado

@export var animaciones : SpriteFrames
@export var nombre : String
@export var velocidad : int
@export var masa : float
@export var matriz_propiedades : Array[bool]
@export var colision : Array[int] #Con que colisionan

#orden de propiedades: primero vuelo, segundo lanzar masa

#La matriz_propiedades es una matriz que indica si cierto estado tiene o no ciertas propiedades,
#por ejemplo, la primera propiedad es vuelo, (con corrientes de aire, como tiene un tre, 
#puede volar, pero el false lo tiene en lanzar trozos de masa, porque eso no lo puede hacer
