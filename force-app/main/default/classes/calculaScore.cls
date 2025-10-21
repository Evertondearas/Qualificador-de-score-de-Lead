public with sharing class calculaScore {
    public static Integer calculaScore(Account acc){
        Integer score = 300;
        if (acc.AnnualRevenue > 100000) score += 200;
        if (acc.NumberOfEmployees > 50) score += 100;
        if (acc.Industry == 'Financeiro') score += 150;
        return score;
    }
}