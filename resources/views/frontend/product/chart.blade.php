@extends('frontend.templates.eshopper')
@section('content')

<section id="cart_items">
    <div class="container">
        <h1 class="title text-center">LIST CHAR PRODUK</h1>
        <div class="table-responsive cart_info">
            <table class="table table-condensed">
                <thead>
                    <tr class="cart_menu">
                        <td class="image">COVER</td>
                        <td class="description">KETERANGAN</td>
                        <td class="price">HARGA</td>
                        <td class="quantity">QUANTITY</td>
                        <td class="total">Total</td>
                        <td> </td>
                    </tr>
                </thead>
                <tbody>
                    @foreach ((object) Cart::session($users)->getContent()->toArray() as $item)
                        <tr>
                            <td colspan="4">&nbsp;</td>
                            <td colspan="2">
                                <table class="table table-condensed total-result">
                                    <tbody>
                                        <tr>
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
                    @endforeach
                </tbody>                                                                                                                                                                                                                                                                                                                                                      y>
            </table>

        </div>

        <tr>
            <a class="btn btn-primary right" href="">ORDER SEKARANG</a>
            <a class="btn btn-primary right" href="">KEMBALI</a>
        </tr>


    </div>
</section>

@endsection







