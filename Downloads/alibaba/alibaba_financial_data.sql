-- Alibaba Group Financial Data Structure
-- Created from full-tables.xlsx analysis

-- Table for Years
CREATE TABLE years (
    year_id INTEGER PRIMARY KEY,
    year_value INTEGER,
    currency TEXT
);

-- Table for Income Statement data
CREATE TABLE income_statement (
    id INTEGER PRIMARY KEY,
    year_id INTEGER,
    revenue BIGINT,
    cost_of_revenue BIGINT,
    gross_profit BIGINT,
    product_development_expenses BIGINT,
    sales_and_marketing_expenses BIGINT,
    general_and_administrative_expenses BIGINT,
    amortization_and_impairment BIGINT,
    impairment_of_goodwill BIGINT,
    other_gains_net BIGINT,
    income_from_operations BIGINT,
    interest_and_investment_income_net BIGINT,
    interest_expense BIGINT,
    other_income_net BIGINT,
    income_before_income_tax BIGINT,
    income_tax_expenses BIGINT,
    share_of_results_of_equity_method_investees BIGINT,
    net_income BIGINT,
    net_income_attributable_to_noncontrolling_interests BIGINT,
    net_income_attributable_to_alibaba BIGINT,
    accretion_of_mezzanine_equity BIGINT,
    net_income_attributable_to_ordinary_shareholders BIGINT,
    basic_eps DECIMAL(10,4),
    diluted_eps DECIMAL(10,4),
    basic_eps_ads DECIMAL(10,4),
    diluted_eps_ads DECIMAL(10,4),
    weighted_average_shares_basic BIGINT,
    weighted_average_shares_diluted BIGINT,
    FOREIGN KEY (year_id) REFERENCES years(year_id)
);

-- Table for Balance Sheet data
CREATE TABLE balance_sheet (
    id INTEGER PRIMARY KEY,
    year_id INTEGER,
    cash_and_cash_equivalents BIGINT,
    short_term_investments BIGINT,
    restricted_cash_and_escrow BIGINT,
    equity_securities_other_investments_current BIGINT,
    prepayments_receivables_other_assets_current BIGINT,
    total_current_assets BIGINT,
    equity_securities_other_investments_noncurrent BIGINT,
    prepayments_receivables_other_assets_noncurrent BIGINT,
    investments_in_equity_method_investees BIGINT,
    property_and_equipment_net BIGINT,
    intangible_assets_net BIGINT,
    goodwill BIGINT,
    total_assets BIGINT,
    current_bank_borrowings BIGINT,
    current_unsecured_senior_notes BIGINT,
    income_tax_payable BIGINT,
    accrued_expenses_accounts_payable_other_liabilities BIGINT,
    merchant_deposits BIGINT,
    deferred_revenue_and_customer_advances BIGINT,
    total_current_liabilities BIGINT,
    deferred_revenue BIGINT,
    deferred_tax_liabilities BIGINT,
    non_current_bank_borrowings BIGINT,
    non_current_unsecured_senior_notes BIGINT,
    non_current_convertible_unsecured_senior_notes BIGINT,
    other_liabilities BIGINT,
    total_liabilities BIGINT,
    mezzanine_equity BIGINT,
    ordinary_shares BIGINT,
    additional_paid_in_capital BIGINT,
    treasury_shares BIGINT,
    statutory_reserves BIGINT,
    cumulative_translation_adjustments BIGINT,
    unrealized_gains_losses_on_interest_rate_swaps BIGINT,
    retained_earnings BIGINT,
    total_shareholders_equity BIGINT,
    noncontrolling_interests BIGINT,
    total_equity BIGINT,
    FOREIGN KEY (year_id) REFERENCES years(year_id)
);

-- Table for Cash Flow Statement data
CREATE TABLE cash_flow_statement (
    id INTEGER PRIMARY KEY,
    year_id INTEGER,
    net_income BIGINT,
    depreciation_and_impairment_property_equipment BIGINT,
    amortization_of_intangible_assets BIGINT,
    share_based_compensation_expense BIGINT,
    impairment_of_equity_securities_other_investments BIGINT,
    impairment_of_goodwill_intangible_assets_licensed_copyrights BIGINT,
    share_of_results_of_equity_method_investees BIGINT,
    deferred_income_taxes BIGINT,
    allowance_for_doubtful_accounts BIGINT,
    prepayments_receivables_other_assets_net BIGINT,
    income_tax_payable_net BIGINT,
    accrued_expenses_accounts_payable_other_liabilities_net BIGINT,
    merchant_deposits_net BIGINT,
    deferred_revenue_and_customer_advances_net BIGINT,
    net_cash_provided_by_operating_activities BIGINT,
    increase_decrease_in_short_term_investments_net BIGINT,
    increase_in_other_treasury_investments_net BIGINT,
    settlement_of_forward_exchange_contracts_net BIGINT,
    acquisitions_of_equity_securities_other_investments_net BIGINT,
    disposals_of_equity_securities_other_investments_net BIGINT,
    acquisitions_of_equity_method_investees BIGINT,
    disposals_of_equity_method_investees BIGINT,
    acquisitions_of_land_use_rights_property_equipment BIGINT,
    acquisitions_of_intangible_assets BIGINT,
    disposals_of_property_and_equipment BIGINT,
    cash_paid_for_business_combinations_net BIGINT,
    deconsolidation_and_disposal_of_subsidiaries_net BIGINT,
    loans_to_employees_net BIGINT,
    net_cash_used_in_investing_activities BIGINT,
    issuance_of_ordinary_shares BIGINT,
    repurchase_of_ordinary_shares BIGINT,
    dividend_distribution BIGINT,
    proceeds_from_convertible_unsecured_senior_notes BIGINT,
    payments_for_capped_call_transactions BIGINT,
    acquisition_of_additional_equity_interests_in_non_wholly_owned_subsidiaries BIGINT,
    dividends_paid_by_non_wholly_owned_subsidiaries_to_noncontrolling_interests BIGINT,
    contingent_consideration_payments_after_business_combination BIGINT,
    capital_injection_from_noncontrolling_interests BIGINT,
    proceeds_from_bank_borrowings_other_borrowings BIGINT,
    repayment_of_bank_borrowings BIGINT,
    proceeds_from_unsecured_senior_notes BIGINT,
    repayment_of_unsecured_senior_notes BIGINT,
    net_cash_used_in_financing_activities BIGINT,
    effect_of_exchange_rate_changes_on_cash BIGINT,
    increase_decrease_in_cash_and_cash_equivalents BIGINT,
    cash_and_cash_equivalents_at_beginning_of_year BIGINT,
    cash_and_cash_equivalents_at_end_of_year BIGINT,
    FOREIGN KEY (year_id) REFERENCES years(year_id)
);

-- Table for Business Segment Revenue
CREATE TABLE business_segments (
    id INTEGER PRIMARY KEY,
    year_id INTEGER,
    segment_name TEXT,
    revenue BIGINT,
    adjusted_ebita BIGINT,
    FOREIGN KEY (year_id) REFERENCES years(year_id)
);

-- Table for Key Financial Ratios
CREATE TABLE financial_ratios (
    id INTEGER PRIMARY KEY,
    year_id INTEGER,
    revenue_growth_rate DECIMAL(5,4),
    net_income_margin DECIMAL(5,4),
    roe_percent DECIMAL(5,2),
    roa_percent DECIMAL(5,2),
    current_ratio DECIMAL(5,2),
    debt_to_equity_ratio DECIMAL(5,2),
    gross_margin_percent DECIMAL(5,2),
    operating_margin_percent DECIMAL(5,2),
    free_cash_flow BIGINT,
    FOREIGN KEY (year_id) REFERENCES years(year_id)
);

-- Insert year data
INSERT INTO years (year_value, currency) VALUES 
(2020, 'RMB'), (2021, 'RMB'), (2022, 'RMB'), (2023, 'RMB'), (2024, 'RMB'), (2025, 'RMB');

-- Insert Income Statement data
INSERT INTO income_statement (
    year_id, revenue, cost_of_revenue, gross_profit, product_development_expenses, 
    sales_and_marketing_expenses, general_and_administrative_expenses, 
    amortization_and_impairment, impairment_of_goodwill, other_gains_net,
    income_from_operations, interest_and_investment_income_net, interest_expense,
    other_income_net, income_before_income_tax, income_tax_expenses,
    share_of_results_of_equity_method_investees, net_income,
    net_income_attributable_to_noncontrolling_interests, 
    net_income_attributable_to_alibaba, accretion_of_mezzanine_equity,
    net_income_attributable_to_ordinary_shareholders, basic_eps, diluted_eps,
    basic_eps_ads, diluted_eps_ads, weighted_average_shares_basic,
    weighted_average_shares_diluted
) VALUES
(2, 717289, -421205, 296084, -57236, -81519, -55224, -12427, 0, 0, 89678, 72794, -4476, 7582, 165578, -29278, 6984, 143284, 7294, 150578, -270, 150308, 6.95, 6.84, 55.63, 54.7, 21619, 21982), -- 2021
(3, 853062, -539450, 313612, -55465, -119799, -31922, -11647, -25141, 0, 69638, -15702, -4909, 10523, 59550, -26815, 14344, 47079, 15170, 62249, -290, 61959, 2.87, 2.84, 22.99, 22.74, 21558, 21787), -- 2022
(4, 868687, -549695, 318992, -56744, -103496, -42183, -13504, -2714, 0, 100351, -11071, -5918, 5823, 89185, -15549, -8063, 65573, 7210, 72783, -274, 72509, 3.46, 3.43, 27.65, 27.46, 20980, 21114), -- 2023
(5, 941168, -586323, 354845, -52256, -115141, -41985, -21592, -10521, 0, 113350, -9964, -7947, 6157, 101596, -22529, -7735, 71332, 8677, 80009, -268, 79741, 3.95, 3.91, 31.61, 31.24, 20182, 20359), -- 2024
(6, 996347, -598285, 398062, -57151, -144021, -44239, -6336, -6171, 761, 140905, 20759, -9596, 3387, 155455, -35445, 5966, 125976, 4133, 130109, -639, 129470, 6.89, 6.70, 55.12, 53.59, 18791, 19318); -- 2025

-- Insert Balance Sheet data
INSERT INTO balance_sheet (
    year_id, cash_and_cash_equivalents, short_term_investments, 
    restricted_cash_and_escrow, equity_securities_other_investments_current,
    prepayments_receivables_other_assets_current, total_current_assets,
    equity_securities_other_investments_noncurrent,
    prepayments_receivables_other_assets_noncurrent,
    investments_in_equity_method_investees, property_and_equipment_net,
    intangible_assets_net, goodwill, total_assets,
    current_bank_borrowings, current_unsecured_senior_notes,
    income_tax_payable, accrued_expenses_accounts_payable_other_liabilities,
    merchant_deposits, deferred_revenue_and_customer_advances,
    total_current_liabilities, deferred_revenue, deferred_tax_liabilities,
    non_current_bank_borrowings, non_current_unsecured_senior_notes,
    non_current_convertible_unsecured_senior_notes, other_liabilities,
    total_liabilities, mezzanine_equity, ordinary_shares,
    additional_paid_in_capital, treasury_shares, statutory_reserves,
    cumulative_translation_adjustments, unrealized_gains_losses_on_interest_rate_swaps,
    retained_earnings, total_shareholders_equity, noncontrolling_interests,
    total_equity
) VALUES
(2, 321262, 152376, 35207, 9807, 124708, 643360, 237221, 98432, 200189, 147412, 70833, 292771, 1690218, 3606, 9831, 25275, 261140, 15017, 62489, 377358, 3158, 59598, 38335, 97381, 0, 30754, 606584, 0, 1, 397999, -27684, 14733, 3635, -37, 597897, 937470, 137491, 1074961), -- 2021
(3, 189898, 256514, 37455, 8673, 145995, 638535, 223611, 113147, 219642, 171806, 59231, 269581, 1695553, 8841, 0, 21753, 271460, 14747, 66983, 383784, 3490, 61706, 38244, 94259, 0, 31877, 613360, 0, 1, 398070, -27684, 14733, 3635, -37, 597897, 948479, 124059, 1072538), -- 2022
(4, 193086, 326492, 36424, 4892, 137072, 697966, 245737, 110926, 207380, 176031, 46913, 268091, 1753044, 7466, 4800, 12543, 275950, 13297, 71295, 385351, 3560, 61745, 52023, 97065, 0, 30379, 630123, 0, 1, 397999, -27684, 14733, 3635, -37, 597897, 989657, 123406, 1113063), -- 2023
(5, 248125, 262955, 38299, 59949, 143536, 752864, 220942, 116102, 203131, 185161, 26950, 259679, 1764829, 12749, 16252, 9068, 297883, 12737, 72818, 421507, 4069, 53012, 55686, 86089, 0, 31867, 652230, 10728, 1, 397999, -27684, 14733, 3635, -37, 597897, 986544, 115327, 1101871), -- 2024
(6, 145487, 228826, 43781, 53780, 202175, 674049, 356818, 83431, 210169, 203348, 20911, 255501, 1804227, 22562, 0, 11638, 332537, 274, 68335, 435346, 4536, 48454, 49909, 122398, 35834, 17644, 714121, 11713, 1, 381379, -36329, 15936, 3286, 107, 645478, 1009858, 68535, 1078393); -- 2025

-- Insert Cash Flow Statement data
INSERT INTO cash_flow_statement (
    year_id, net_income, depreciation_and_impairment_property_equipment,
    amortization_of_intangible_assets, share_based_compensation_expense,
    impairment_of_equity_securities_other_investments,
    impairment_of_goodwill_intangible_assets_licensed_copyrights,
    share_of_results_of_equity_method_investees, deferred_income_taxes,
    allowance_for_doubtful_accounts, prepayments_receivables_other_assets_net,
    income_tax_payable_net, accrued_expenses_accounts_payable_other_liabilities_net,
    merchant_deposits_net, deferred_revenue_and_customer_advances_net,
    net_cash_provided_by_operating_activities,
    increase_decrease_in_short_term_investments_net,
    increase_in_other_treasury_investments_net,
    settlement_of_forward_exchange_contracts_net,
    acquisitions_of_equity_securities_other_investments_net,
    disposals_of_equity_securities_other_investments_net,
    acquisitions_of_equity_method_investees,
    disposals_of_equity_method_investees,
    acquisitions_of_land_use_rights_property_equipment,
    acquisitions_of_intangible_assets,
    disposals_of_property_and_equipment,
    cash_paid_for_business_combinations_net,
    deconsolidation_and_disposal_of_subsidiaries_net,
    loans_to_employees_net,
    net_cash_used_in_investing_activities,
    issuance_of_ordinary_shares,
    repurchase_of_ordinary_shares,
    dividend_distribution,
    proceeds_from_convertible_unsecured_senior_notes,
    payments_for_capped_call_transactions,
    acquisition_of_additional_equity_interests_in_non_wholly_owned_subsidiaries,
    dividends_paid_by_non_wholly_owned_subsidiaries_to_noncontrolling_interests,
    contingent_consideration_payments_after_business_combination,
    capital_injection_from_noncontrolling_interests,
    proceeds_from_bank_borrowings_other_borrowings,
    repayment_of_bank_borrowings,
    proceeds_from_unsecured_senior_notes,
    repayment_of_unsecured_senior_notes,
    net_cash_used_in_financing_activities,
    effect_of_exchange_rate_changes_on_cash,
    increase_decrease_in_cash_and_cash_equivalents,
    cash_and_cash_equivalents_at_beginning_of_year,
    cash_and_cash_equivalents_at_end_of_year
) VALUES
(4, 65573, 27799, 19139, 30831, 13327, 6658, 8063, -1717, 2802, 8605, -9214, 11159, -1450, 4382, 199752, -61086, -40794, 1282, -17818, 21738, -4552, 1001, -34330, -22, 644, -1204, -5, 360, -135506, 11, -61225, 0, 0, 0, -2511, -489, -144, 918, 9427, -11448, 0, 0, -65619, 3530, 2157, 227353, 229510), -- 2023
(5, 71332, 26640, 17864, 18546, 12244, 22610, 7735, -5263, 3509, -37621, -4764, 27126, -560, 2070, 182593, 71426, -64392, 658, -15240, 21966, -3525, 1265, -32087, -842, 373, -2204, 699, 79, -21824, 843, -74746, -17946, 0, 0, -5821, -546, -71, 1577, 20570, -13092, 0, -5013, -108244, 4389, 56914, 229510, 286424), -- 2024
(6, 125976, 29260, 13199, 13970, 8801, 6805, -5966, 374, 3016, -50590, 1968, 25873, -12463, 11224, 163509, 23395, -126041, -335, -10342, 18214, -3822, 1520, -85972, 0, 2428, 353, -5077, 264, -185415, 10, -86662, -29077, 35665, -4612, -21949, -664, -197, 2402, 52788, -43678, 35979, -16220, -76215, 965, -97156, 286424, 189268); -- 2025

-- Insert Business Segment data
INSERT INTO business_segments (year_id, segment_name, revenue, adjusted_ebita) VALUES
(4, 'Taobao and Tmall Group', 413206, 189140), -- 2023
(5, 'Taobao and Tmall Group', 434893, 194827), -- 2024
(6, 'Taobao and Tmall Group', 449827, 196232), -- 2025
(4, 'Alibaba International Digital Commerce Group', 70506, -4944), -- 2023
(5, 'Alibaba International Digital Commerce Group', 102598, -8035), -- 2024
(6, 'Alibaba International Digital Commerce Group', 132300, -15137), -- 2025
(4, 'Cloud Intelligence Group', 103497, 4101), -- 2023
(5, 'Cloud Intelligence Group', 106374, 6121), -- 2024
(6, 'Cloud Intelligence Group', 118028, 10556), -- 2025
(4, 'Cainiao Smart Logistics Network Limited', 77512, -391), -- 2023
(5, 'Cainiao Smart Logistics Network Limited', 99020, 1402), -- 2024
(6, 'Cainiao Smart Logistics Network Limited', 101272, 302), -- 2025
(4, 'Local Services Group', 50249, -13148), -- 2023
(5, 'Local Services Group', 59802, -9812), -- 2024
(6, 'Local Services Group', 67076, -3689), -- 2025
(4, 'Hujing Digital Media and Entertainment Group', 18444, -2789), -- 2023
(5, 'Hujing Digital Media and Entertainment Group', 21145, -1539), -- 2024
(6, 'Hujing Digital Media and Entertainment Group', 22267, -554); -- 2025

-- Insert Financial Ratios
INSERT INTO financial_ratios (
    year_id, revenue_growth_rate, net_income_margin, roe_percent, roa_percent,
    current_ratio, debt_to_equity_ratio, gross_margin_percent, operating_margin_percent,
    free_cash_flow
) VALUES
(2, NULL, 0.200, 8.91, 8.46, 1.70, 0.65, 0.413, 0.125, 171663), -- 2021
(3, 0.189, 0.055, 6.56, 2.78, 1.66, 0.65, 0.368, 0.082, 156210), -- 2022
(4, 0.018, 0.075, 7.36, 3.73, 1.81, 0.64, 0.367, 0.115, 73870), -- 2023
(5, 0.083, 0.076, 8.07, 4.03, 1.79, 0.66, 0.377, 0.120, NULL), -- 2024
(6, 0.058, 0.126, 12.88, 7.01, 1.55, 0.71, 0.399, 0.141, NULL); -- 2025

-- Create index for better query performance
CREATE INDEX idx_year_id ON income_statement(year_id);
CREATE INDEX idx_year_id_bs ON balance_sheet(year_id);
CREATE INDEX idx_year_id_cfs ON cash_flow_statement(year_id);
CREATE INDEX idx_year_id_segments ON business_segments(year_id);