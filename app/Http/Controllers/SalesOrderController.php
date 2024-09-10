<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use App\Models\Order;
class SalesOrderController extends Controller
{
    public static function totalAmountLast7Days()
    {
        // Calculate the date 7 days ago
        $sevenDaysAgo = Carbon::now()->subDays(7);

        // Retrieve and sum the total_amount of orders created in the last 7 days
        $totalAmountLast7Days = Order::where('total_amount', '>=', $sevenDaysAgo)
            ->sum('total_amount');

        return $totalAmountLast7Days;
    }
}
