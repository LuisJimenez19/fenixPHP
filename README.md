
# Super API with PHP

It's a small project to practice:
- The syntax of php.
- How does it work.
- How to deploy.
even practice English

## API Reference

### Get all products

```http
  GET /api/products
```

| Parameter | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `page` | `integer` | **optional**. |

### Create Product

```http
  POST /api/product
```

| Body | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `seccion` | `string` | **Required**. 10 character max name of category |
| `nombre_articulo`| `string` | **Required**. 20 character name of product |
| `fecha`      | `string` | **Required**. DD/MM/YYYY  |
| `pais_de_origen`      | `string` | **Required**. 9 character max |
| `precio`      | `integer` | **Required**. price of the product |
| `url_img`      | `string` | **optional**. image url   |

### Update Product

```http
  PATCH /api/product/{id_product}
```
| Parameter | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `id_product` | `integer` | **optional**. id of product to update |

| Body | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `seccion` | `string` | **optional**. 10 character max name of category |
| `nombre_articulo`| `string` | **optional**. 20 character name of product |
| `fecha`      | `string` | **optional**. DD/MM/YYYY  |
| `pais_de_origen`      | `string` | **optional**. 9 character max |
| `precio`      | `integer` | **optional**. price of the product |
| `url_img`      | `string` | **optional**. image url   |


### Delete Product

```http
  DELETE /api/products
```

| Parameter | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `id_product` | `integer` | **Required**. id of product to delete |


## Demo

![image](https://github.com/LuisJimenez19/fenixPHP/assets/102745510/887ced22-a3c4-4801-a9ef-7c355b59bf79)

## Authors

- [@luisjimenez19](https://www.github.com/luisjimenez19)

