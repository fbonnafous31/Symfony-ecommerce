<?php

namespace App\Stripe;

use Stripe\Stripe;
use App\Entity\Purchase;
use Stripe\PaymentIntent;

class StripeService
{
    protected $secretKey;
    protected $publicKey;

    public function __construct(string $secretKey, string $publicKey)
    {
        $this->secretKey = $secretKey;
        $this->publicKey = $publicKey;
    }

    public function getPublicKey(): string
    {
        return $this->publicKey;
    }

    public function getPaymentIntent(Purchase $purchase)
    {
        Stripe::setApiKey($this->secretKey);

        return $intent = PaymentIntent::create([
            'amount' => $purchase->getTotal(),
            'currency' => 'eur'
        ]);
    }
}
