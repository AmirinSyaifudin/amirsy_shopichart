@extends('frontend.templates.eshopper')
@section('content')

<section id="cart_items">
    <div class="container">
        <h2 class="title text-center">chart produk</h2>

        <div class="table-responsive cart_info">
            <table class="table table-condensed">
                <thead>
                    <tr class="cart_menu">
                        <td class="image">COVER</td>
                        <td class="description">KETERANGAN</td>
                        <td class="price">HARGA</td>
                        <td class="quantity">QUANTITY</td>
                        <td class="total">Total</td>
                        <td></td>
                    </tr>
                </thead>


                <tbod>






                    <tr>
                        <td colspan="4">&nbsp;</td>
                        <td colspan="2">
                            <table class="table table-condensed total-result">
                                <tbody><tr>
                                    <td>Jumlah Total Produk : </td>
                                    <td>$59</td>
                                </tr>
                                {{-- <tr>
                                    <td>Exo Tax</td>
                                    <td>$2</td>
                                </tr> --}}
                                <tr class="shipping-cost">
                                    <td>Pengiriman : </td>
                                    <td>Free</td>
                                </tr>
                                <tr class="shipping-cost">
                                    <td>Transfer  : </td>
                                    <td>Free</td>
                                </tr>
                                <tr>
                                    <td>Total Produk</td>
                                    <td><span>$61</span></td>
                                </tr>
                            </tbody>
                        </table>
                        </td>
                    </tr>



                </tbod                                                                                                                                                                                                                                                                                                                                                      y>
            </table>


        </div>

        <tr>
            <a class="btn btn-primary right" href="">ORDER SEKARANG</a>
            <a class="btn btn-primary right" href="">KEMBALI</a>
        </tr>


    </div>
</section>

@endsection


{{--  <tr>
    <td class="cart_product">
        <a href=""><img src="{{ asset('eshopper/images/cart/one.png') }}" alt=""></a>
    </td>
    <td class="cart_description">
        <h4><a href="">Colorblock Scuba</a></h4>
        <p>Web ID: 1089772</p>
    </td>
    <td class="cart_price">
        <p>$59</p>
    </td>
    <td class="cart_quantity">
        <div class="cart_quantity_button">
            <a class="cart_quantity_up" href=""> + </a>
            <input class="cart_quantity_input" type="text" name="quantity" value="1" autocomplete="off" size="2">
            <a class="cart_quantity_down" href=""> - </a>
        </div>
    </td>
    <td class="cart_total">
        <p class="cart_total_price">$59</p>
    </td>
    <td class="cart_delete">
        <a class="cart_quantity_delete" href=""><i class="fa fa-times"></i></a>
    </td>
</tr>  --}}







