<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Produk;
use App\Katagori;
use App\Transaksi;
use Illuminate\Support\Facades\DB;

class ProdukController extends Controller
{
    // protected $cart;
    // public function __construct(CartService $cart)
    // {
    //     $this->cart = $cart;
    // }

    public function index()
    {
        // $produk = Produk::paginate(50);
        // return view('frontend.product.index', [
        //     'produk'    => $produk,
        // ]);
        $produk = DB::table('produk')
            ->join('katagori', 'produk.katagori_id', '=', 'katagori.katagori_id')
            ->select(
                'produk.*',
                'produk.nama_produk',
                'produk.cover',
                'produk.qty',
                'produk.harga',
                'produk.keterangan',
                'katagori.katagori_id',
                'katagori.nama_katagori'
            )
            // ->groupBy('katagori.nama_katagori')
            ->get();

        $katagori = DB::table('katagori')
            ->orderBy('nama_katagori', 'ASC')
            ->get();

        $data = array(
            'produk'    => $produk,
            'katagori'   => $katagori
        );

        return view('frontend.product.index', $data);
    }

    public function detail($produk_id)
    {
        $produk = DB::table('produk')
            ->where('produk_id', $produk_id)
            ->first();
        $katagori = DB::table('katagori')
            ->get();
        //  dd($produk);
        $data = array(
            'produk'        => $produk,
            'katagori'      => $katagori
        );
        //    dd($produk);
        return view('frontend.product.detail', $data);
    }

    // KATAGORI PRODUK
    public function ktproduk($katagori_id)
    {
        $produk = DB::table('produk')
            ->join('katagori', 'produk.katagori_id', '=', 'katagori.katagori_id')
            ->select(
                'produk.*',
                'produk.nama_produk',
                'produk.cover',
                'produk.qty',
                'produk.harga',
                'produk.keterangan',
                'katagori.katagori_id',
                'katagori.nama_katagori'
            )
            ->where('katagori.katagori_id', $katagori_id)
            ->get();
        $katagori = DB::table('katagori')
            ->orderBy('nama_katagori', 'ASC')
            ->get();
        $data = array(
            'produk'    => $produk,
            'katagori'   => $katagori
        );

        //  dd($data);
        return view('frontend.product.ktproduk', $data);
    }


    public function addchartproduk(Request $request, $produk_id)
    {
        // $produk = Produk::find($request->$produk_id);
        $produk     = DB::table('produk')->where('produk_id', $produk_id)->first();
        $users =  auth()->user()->id;

        $param = [
            'id'                => time(),
            'nama_produk'       => $request->nama_produk,
            'harga'             => $request->harga,
            'qty'               => $request->qty,
            // 'attributes'     => array(),
            'produk'            => $produk,
        ];

        // Cart::session($users)->add($param);
        $data = array(
            'produk'        => $produk,
            'users'         => $users,
            'param'         => $param
        );

        // dd($produk, $users);
        return view('frontend.product.listproduct', $data)
            ->with('sukses', 'Produk Di masukkan ke Keranjang Belanja');
        //return view('frontend.product.chart');

        // Cart::session($users)->add($param);
        // return redirect('cart')
        //     ->with('sukses', 'Dimasukkna ke dalam keranjang');

        // Cart::session($user_id)->add(array(
        //     'user_id'       => auth::id(),
        //     'nama_produk'   => $request->nama_produk,
        //     'harga'         => $request->harga,
        //     'qty'           => $request->qty,
        //     'keteranan'     => $request->keterangan,
        //     'katagori_id'   => $request->katagori_id
        // ));

        // $param = [
        //     'id'                => time(),
        //     'nama_produk'       => $request->nama_produk,
        //     'harga'             => $request->harga,
        //     'qty'               => $request->qty,
        //     // 'attributes'     => array(),
        //     'produk'            => $produk,
        // ];

        // return redirect('/frontend/product', ['cart', $chart, 'produk', $produk, 'users', $user_id]);
        // return redirect('/frontend/product');

        // dd($produk, $users);
        // return view('frontend.product.chart');
    }


    public function cart()
    {

        $produk = Produk::find($request->produk_id);
        $users =  auth()->user()->id;

        $param = [
            'id'                => time(),
            'nama_produk'       => $request->nama_produk,
            'harga'             => $request->harga,
            'qty'               => $request->qty,
            // 'attributes'     => array(),
            'produk'            => $produk,
        ];

        Cart::session($users)->add($param);
        return redirect('cart')
            ->with('sukses', 'Dimasukkna ke dalam keranjang');
        //  $chart = session("cart");

        return view('frontend.product.chart', $chart);
    }

    public function delete()
    {
    }

    public function listproduk($produk_id)
    {

        $transaksi = DB::table('transaksi')
            ->join('produk', 'transaksi.produk_id', '=', 'produk.produk_id')
            ->join('kabupaten', 'transaksi.kabupaten_id', '=', 'kabupaten.kabupaten_id')
            ->join('provinsi', 'transaksi.provinsi_id', '=', 'provinsi.provinsi_id')
            ->join('kota', 'transaksi.kota_id', '=', 'kota.kota_id')
            ->join('users', 'transaksi.user_id', '=', 'users.id')
            ->select(
                'transaksi.nama',
                'transaksi.no_telpon',
                'transaksi.no_rekening',
                'transaksi.tanggal',
                'transaksi.transfer',
                'transaksi.kode_pos',
                'transaksi.pengirim',
                'transaksi.kode_transaksi',
                'transaksi.alamat',
                'transaksi.keterangan',
                'produk.produk_id',
                'produk.nama_produk',
                'kabupaten.kabupaten_id',
                'kabupaten.nama_kabupaten',
                'provinsi.provinsi_id',
                'provinsi.nama_provinsi',
                'kota.kota_id',
                'kota.nama_kota',
                'users.id',
                'users.name'
            )
            ->get();

        $produk     = DB::table('produk')->where('produk_id', $produk_id)->first();
        $kabupaten  = DB::table('kabupaten')->get();
        $provinsi   = DB::table('provinsi')->get();
        $kota       = DB::table('kota')->get();

        $data = array(
            'produk'        => $produk,
            'kabupaten'     => $kabupaten,
            'provinsi'      => $provinsi,
            'kota'          => $kota,
            'transaksi'     => $transaksi,
        );
        // dd($data);
        return view('frontend.site.transaksi', $data);
        // dd($transaksi);
        return view('frontend.site.listproduk');
    }
}