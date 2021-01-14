<?php

namespace App\Http\Controllers\Frontend;

use AdminUserSeeder;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Users;
use App\Produk;
use App\Kabupaten;
use App\Transaksi;
use App\Katagori;

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class SiteController extends Controller
{
    //
    public function home()
    {
        return view('frontend.templates.home');
    }

    public function homeapp()
    {
        return view('frontend.templates.homeapp');
    }

    public function transaksi($produk_id)
    {
        $users =  auth()->user()->id;
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
            'users'         => $users
        );
        // $produk->decrement('qty');
        // dd($data);
        return view('frontend.site.transaksi', $data);
    }

    public function proses_transaksi(Request $request)
    {
        DB::table('transaksi')
            ->insert([
                'user_id'         => auth::id(),
                'produk_id'       => $request->produk_id,
                'kabupaten_id'    => $request->kabupaten_id,
                'provinsi_id'     => $request->provinsi_id,
                'kota_id'         => $request->kota_id,
                'tanggal'         => date('d-m-Y'),
                'nama'            => $request->nama,
                'no_rekening'     => $request->no_rekening,
                'transfer'        => $request->transfer,
                'no_telpon'       => $request->no_telpon,
                'kode_pos'        => $request->kode_pos,
                'pengirim'        => $request->pengirim,
                'kode_transaksi'  => $request->kode_transaksi,
                'alamat'          => $request->alamat,
                'keterangan'      => $request->keterangan,
            ]);

        return redirect()->back()
            ->with('sukses', 'Transaksi Berhasil !!!');
        // return redirect('/admin/transaksi', $data)->with('sukses', 'Transaksi Berhasil !!!');
    }


    public function kontak()
    {
        return view('frontend.templates.kontak');
    }

    public function blog()
    {
        return view('frontend.templates.blog');
    }


    public function blogsingle()
    {
        return view('frontend.templates.blogsingle');
    }

    public function galery()
    {
        return view('frontend.templates.galery');
    }



    public function eshopper()
    {
        return view('frontend.templates.homeapp');

        //   return view('frontend.templates.eshopper');
    }
}