<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SalesOrder extends Model
{
    use HasFactory;
    public static function totalAmountLast7Days()
    {
        // Calculate the date 7 days ago
        $sevenDaysAgo = Carbon::now()->subDays(7);

        // Retrieve and sum the total_amount of orders created in the last 7 days
        $totalAmountLast7Days = Order::where('created_at', '>=', $sevenDaysAgo)
            ->sum('total_amount');

        return $totalAmountLast7Days;
    }
}
