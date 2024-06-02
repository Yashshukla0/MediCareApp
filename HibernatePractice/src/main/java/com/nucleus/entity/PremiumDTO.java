package com.nucleus.entity;

public class PremiumDTO {
    private int premiumAmount;

    public PremiumDTO(int premiumAmount) {
        this.premiumAmount = premiumAmount;
    }

    public int getPremiumAmount() {
        return premiumAmount;
    }

    public void setPremiumAmount(int premiumAmount) {
        this.premiumAmount = premiumAmount;
    }

    @Override
    public String toString() {
        return "PremiumDTO{" +
                "premiumAmount=" + premiumAmount +
                '}';
    }
}
