<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


Route::get('/', 'PonnobaharController@index');
Route::get('/category/{id}', 'PonnobaharController@category');
Route::get('/category-product/{taka}', 'PonnobaharController@categoryProduct');
Route::get('/color-product/{color}', 'PonnobaharController@colorProduct');
Route::get('/product-details/{id}', 'PonnobaharController@productDetails');



Route::post('/add-to-cart', 'CartController@addToCart');
Route::get('/show-cart', 'CartController@showCart');
Route::post('/update-cart-product/{id}', 'CartController@updateCartProduct');
//Route::get('/update-cart-product/{productQuantity}/{rowId}', 'CartController@ajaxUpdateCartProduct');
Route::get('/delete-cart-product/{id}', 'CartController@deleteCartProduct');

Route::get('/checkout', 'CheckoutController@index');
Route::get('/customer-email-check/{email}', 'CheckoutController@customerEmailCheck');
Route::post('/new-customer', 'CheckoutController@saveCustomerInfo');
Route::get('/shipping-info', 'CheckoutController@showShippingInfo');
Route::post('/new-shipping', 'CheckoutController@saveShippingInfo');
Route::get('/payment-info', 'CheckoutController@showPaymentInfo');
Route::post('/new-order', 'CheckoutController@newOrderInfo');
Route::get('/complete-order', 'CheckoutController@completeOrderInfo');



Route::get('/contact-us','PonnobaharController@contact');
Route::get('/about-us', 'PonnobaharController@about');
Route::get('/delivery-method', 'PonnobaharController@deliveryMethod');
Route::get('/privacy-policy', 'PonnobaharController@privacyPolicy');
Route::get('/payment-method', 'PonnobaharController@paymentMethod');
Route::get('/FAQ', 'PonnobaharController@FAQ');


/*customer login sign up profile*/
Route::get('/sign-in', 'SignInController@index');
Route::post('/sign-in', 'SignInController@customerLoginCheck');
Route::get('/registration', 'SignInController@customerRegistration');
Route::post('/registration', 'SignInController@newCustomer');
/*customer login sign up profile*/




/*Admin Order Manager*/
Route::get('/manage-order', 'OrderController@manageOrderInfo');
Route::get('/view-order/{id}', 'OrderController@viewOrderDetails');
Route::get('/view-order-invoice/{id}', 'OrderController@viewOrderInvoice');
Route::get('/download-order-invoice/{id}', 'OrderController@downloadOrderInvoice');
Route::get('/edit-order/{id}', 'OrderController@editOrder');
Route::post('/update-order', 'OrderController@updateOrder');
Route::get('/delete-order/{id}', 'OrderController@deleteOrder');
/*Admin Order Manager*/

/*Admin Customer Manager*/
Route::get('/manage-customer', 'CustomerController@manageOrder');
Route::get('/delete-customer/{id}', 'CustomerController@deleteOrder');
/*Admin Customer Manager*/

/*Admin User*/
Route::get('/add-user', 'UserController@AddUser');
Route::post('/new-user', 'UserController@saveUserInfo');
Route::get('/manage-user', 'UserController@manageUserInfo');
Route::get('/delete-user/{id}', 'UserController@deleteUserInfo');
/*Admin User*/





Route::post('/customer-login', 'LoginController@customerLogin');
Route::get('/customer-logout', 'LogoutController@customerLogout');

Auth::routes();
Route::get('/home', 'HomeController@index')->name('home');


Route::get('/add-category','CategoryController@addCategory');
Route::post('/new-category','CategoryController@newCategory');
Route::get('/manage-category','CategoryController@manageCategory');
Route::get('/unpublished-category/{id}','CategoryController@unpublishedCategory');
Route::get('/published-category/{id}','CategoryController@publishedCategory');
Route::get('/edit-category/{id}','CategoryController@editCategory');
Route::post('/update-category','CategoryController@updateCategory');
Route::get('/delete-category/{id}','CategoryController@deleteCategory');


Route::get('/add-sub-category', 'SubCategoryController@addSubCategory');
Route::post('/new-sub-category', 'SubCategoryController@saveSubCategory');
Route::get('/manage-sub-category', 'SubCategoryController@manageSubCategory');
Route::get('/unpublished-sub-category/{id}', 'SubCategoryController@unpublishedSubCategory');
Route::get('/published-sub-category/{id}', 'SubCategoryController@publishedSubCategory');
Route::get('/edit-sub-category/{id}', 'SubCategoryController@editSubCategory');
Route::post('/update-sub-category', 'SubCategoryController@updateSubCategory');
Route::get('/delete-sub-category/{id}', 'SubCategoryController@deleteSubCategory');

Route::get('/add-brand','BrandController@addBrand');
Route::post('/new-brand','BrandController@newBrand');
Route::get('/manage-brand','BrandController@manageBrand');
Route::get('/unpublished-brand/{id}','BrandController@unpublishedBrand');
Route::get('/published-brand/{id}','BrandController@publishedBrand');
Route::get('/edit-brand/{id}','BrandController@editBrand');
Route::post('/update-brand','BrandController@updateBrand');
Route::get('/delete-category/{id}','BrandController@deleteBrand');


Route::get('/add-slider','SliderController@addSlider');
Route::get('/slider-sub-category/{id}','SliderController@sliderSubCategoryByCategoryId');
Route::post('/new-slider','SliderController@saveImageSlider');
Route::get('/manage-slider','SliderController@manageSlider');
Route::get('/unpublished-slider/{id}','SliderController@unpublishedSlider');
Route::get('/published-slider/{id}','SliderController@publishedSlider');
Route::get('/edit-slider/{id}','SliderController@editSlider');
Route::post('/update-slider','SliderController@updateSlider');
Route::get('/delete-slider/{id}','SliderController@deleteSlider');


Route::get('/add-product','ProductController@addProduct');
Route::get('/select-sub-category/{id}', 'ProductController@selectSubCategoryByCategoryId');
Route::post('/new-product','ProductController@saveProductInfo');
Route::get('/manage-product','ProductController@manageProduct');
Route::get('/view-product/{id}','ProductController@viewProductInfo');
