package com.nucleus.entity;



import org.springframework.stereotype.Component;



@Component
public class PremiumEntityDTO {



    private Integer age;
    private Integer diabetes;
    private Integer bloodPressureProblems;
    private Integer anyTransplants;
    private Integer anyChronicDiseases;
    private Double height;
    private Double weight;
    private Integer knownAllergies;
    private Integer historyOfCancerInFamily;
    private Integer numberOfMajorSurgeries;
    private Integer premiumPrice;

    public PremiumEntityDTO( Integer age, Integer diabetes, Integer bloodPressureProblems, Integer anyTransplants, Integer anyChronicDiseases, Double height, Double weight, Integer knownAllergies, Integer historyOfCancerInFamily, Integer numberOfMajorSurgeries,Integer premiumPrice) {
        this.age = age;
        this.diabetes = diabetes;
        this.bloodPressureProblems = bloodPressureProblems;
        this.anyTransplants = anyTransplants;
        this.anyChronicDiseases = anyChronicDiseases;
        this.height = height;
        this.weight = weight;
        this.knownAllergies = knownAllergies;
        this.historyOfCancerInFamily = historyOfCancerInFamily;
        this.numberOfMajorSurgeries = numberOfMajorSurgeries;
        this.premiumPrice=premiumPrice;
    }

    public PremiumEntityDTO() {
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public Integer getDiabetes() {
        return diabetes;
    }

    public void setDiabetes(Integer diabetes) {
        this.diabetes = diabetes;
    }

    public Integer getBloodPressureProblems() {
        return bloodPressureProblems;
    }

    public void setBloodPressureProblems(Integer bloodPressureProblems) {
        this.bloodPressureProblems = bloodPressureProblems;
    }

    public Integer getAnyTransplants() {
        return anyTransplants;
    }

    public void setAnyTransplants(Integer anyTransplants) {
        this.anyTransplants = anyTransplants;
    }

    public Integer getAnyChronicDiseases() {
        return anyChronicDiseases;
    }

    public void setAnyChronicDiseases(Integer anyChronicDiseases) {
        this.anyChronicDiseases = anyChronicDiseases;
    }

    public Double getHeight() {
        return height;
    }

    public void setHeight(Double height) {
        this.height = height;
    }

    public Double getWeight() {
        return weight;
    }

    public void setWeight(Double weight) {
        this.weight = weight;
    }

    public Integer getKnownAllergies() {
        return knownAllergies;
    }

    public void setKnownAllergies(Integer knownAllergies) {
        this.knownAllergies = knownAllergies;
    }

    public Integer getHistoryOfCancerInFamily() {
        return historyOfCancerInFamily;
    }

    public void setHistoryOfCancerInFamily(Integer historyOfCancerInFamily) {
        this.historyOfCancerInFamily = historyOfCancerInFamily;
    }

    public Integer getNumberOfMajorSurgeries() {
        return numberOfMajorSurgeries;
    }

    public void setNumberOfMajorSurgeries(Integer numberOfMajorSurgeries) {
        this.numberOfMajorSurgeries = numberOfMajorSurgeries;
    }

    public Integer getPremiumPrice() {
        return premiumPrice;
    }

    public void setPremiumPrice(Integer premiumPrice) {
        this.premiumPrice = premiumPrice;
    }

    @Override
    public String toString() {
        return "PremiumEntityDTO{" +
                "age=" + age +
                ", diabetes=" + diabetes +
                ", bloodPressureProblems=" + bloodPressureProblems +
                ", anyTransplants=" + anyTransplants +
                ", anyChronicDiseases=" + anyChronicDiseases +
                ", height=" + height +
                ", weight=" + weight +
                ", knownAllergies=" + knownAllergies +
                ", historyOfCancerInFamily=" + historyOfCancerInFamily +
                ", numberOfMajorSurgeries=" + numberOfMajorSurgeries +
                ", premiumPrice=" + premiumPrice +
                '}';
    }
}

