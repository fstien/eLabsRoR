class SolowController < ApplicationController

 before_filter :handle_mobile

 def handle_mobile
   request.format = :mobile if mobile_user_agent?
 end

 respond_to do |format|
   format.html { }   
   format.mobile { } 
 end

 def home 
  @title = "The Solow Model"
 end


def refresh
    render json: [
    "The Solow Model was invented by Robert Solow in the 1950s.",
    "It descibres <a data-original-title=\"Technology/Labour efficiency\" onclick=\"symbolClick('tech', 'Technology/Labour efficiency')\" class=\"tooltipClass\" data-toggle=\"tooltip\" data-html=\"true\">technology as the long-term determinant of income.",
    "",
    "// All text messages are for testing purposes only. //"
    ]
end

def alphaincrease
    render json: [
    "As <a data-original-title=\"Alpha\" onclick=\"symbolClick('alpha', 'Alpha')\" class=\"tooltipClass\" data-toggle=\"tooltip\" data-html=\"true\">alpha</a> increase, the steady state levels of <a data-original-title=\"Steady-State Output/Worker\" onclick=\"symbolClick('y', 'Steady-State Output/Worker')\" class=\"tooltipClass\" data-toggle=\"tooltip\" data-html=\"true\">output</a> and <a data-original-title=\"Steady-State Capital/Worker\" onclick=\"symbolClick('k', 'Steady-State Capital/Worker')\" class=\"tooltipClass\" data-toggle=\"tooltip\" data-html=\"true\">capital</a> also increase.",
    "Note that if depreciation were only 10 percent of capital stock, the equilibrium condition would be s = 0.10 k .",
    "The <a data-original-title=\"Marginal Product of Capital\" onclick=\"symbolClick('MPK', 'Marginal Product of Capital')\" class=\"tooltipClass\" data-toggle=\"tooltip\" data-html=\"true\">marginal..</a>",
    "// All text messages are for testing purposes only. //"
    ]
end

def alphadecrease
    render json: [
    "We have a smaller <a data-original-title=\"Alpha\" onclick=\"symbolClick('alpha', 'Alpha')\" class=\"tooltipClass\" data-toggle=\"tooltip\" data-html=\"true\">alpha</a>.",
    "Will the growth stop? That is, will output converge to a steady state? The answer is yes . We can find steady state equilibrium by making use of the equilibrium condition:",
    "",
    "// All text messages are for testing purposes only. //"
    ]
end

def savingsincrease
    render json: [
    " There is a <a data-original-title=\"The Savings Rate\" onclick=\"symbolClick('savings', 'The Savings Rate')\" class=\"tooltipClass\" data-toggle=\"tooltip\" data-html=\"true\">savings</a> increase!! Therefore the <a data-original-title=\"Marginal Product of Capital\" onclick=\"symbolClick('MPK', 'Marginal Product of Capital')\" class=\"tooltipClass\" data-toggle=\"tooltip\" data-html=\"true\">MPK</a> decreases. For the sake of having a specific example, we assume that people save 1 / 4 of output, or what comes to the same thing, 25 cents for every dollar of income.",
    "We shall find that if <a data-original-title=\"Capital/Worker\" onclick=\"symbolClick('K', 'Capital/Worker')\" class=\"tooltipClass\" data-toggle=\"tooltip\" data-html=\"true\">capital</a> accumulation is the only source of growth, the economy will approach an equilibrium or steady state . It will reach the steady state when savings is just sufficient to replace the depreciated capital stock.",
    "Note that if depreciation were only 10 percent of capital stock, the equilibrium condition would be s = 0.10 k .",
    "// All text messages are for testing purposes only. //"
    ]
end

def savingsdecrease
    render json: [
    "There is a <a data-original-title=\"The Savings Rate\" onclick=\"symbolClick('savings', 'The Savings Rate')\" class=\"tooltipClass\" data-toggle=\"tooltip\" data-html=\"true\">savings</a> decrease. The next step is to use the savings function to calculate how much of this output is saved. If s = 0.25 q then 250 units per capita of output are saved -- and the savings of one period become the capital of the next period.",
    "Will the growth stop? That is, will output converge to a steady state? The answer is yes . We can find steady state equilibrium by making use of the equilibrium condition:",
    "Over time, <a data-original-title=\"Technology/Labour efficiency\" onclick=\"symbolClick('tech', 'Technology/Labour efficiency')\" class=\"tooltipClass\" data-toggle=\"tooltip\" data-html=\"true\">technology</a> improves and so does the <a data-original-title=\"Steady-State Capital/Worker\" onclick=\"symbolClick('k', 'Steady-State Capital/Worker')\" class=\"tooltipClass\" data-toggle=\"tooltip\" data-html=\"true\">steady-state level of capital</a>. Therefore <a data-original-title=\"Steady-State Output/Worker\" onclick=\"symbolClick('y', 'Steady-State Output/Worker')\" class=\"tooltipClass\" data-toggle=\"tooltip\" data-html=\"true\">output</a> also increases. <a data-original-title=\"The Deprecion Rate\" onclick=\"symbolClick('dep', 'The Deprecion Rate')\" class=\"tooltipClass\" data-toggle=\"tooltip\" data-html=\"true\">Depreciation</a> is a linear function of <a data-original-title=\"Capital/Worker\" onclick=\"symbolClick('K', 'Capital/Worker')\" class=\"tooltipClass\" data-toggle=\"tooltip\" data-html=\"true\">output</a>.",
    "// All text messages are for testing purposes only. //"
    ]
end

def depincrease
    render json: [
    "There is a <a data-original-title=\"The Deprecion Rate\" onclick=\"symbolClick('dep', 'The Deprecion Rate')\" class=\"tooltipClass\" data-toggle=\"tooltip\" data-html=\"true\">depreciation</a> INCREASE..",
    "The production function model was applied to the study of growth problems by Robert Solow (American economist, Massachusetts Institute of Technology, Nobel prize 1990).",
    "We assume all people work all the time, and we assume they save, hence invest, a fixed portion of theirincome. There is no government, hence no taxation nor subsidies; this is a closed economy, so there is no trade. Since there are no prices there is no need for money: there are no financial markets, etc.",
    "// All text messages are for testing purposes only. //"
    ]
end

def depdecrease
    render json: [
    "There is a <a data-original-title=\"The Deprecion Rate\" onclick=\"symbolClick('dep', 'The Deprecion Rate')\" class=\"tooltipClass\" data-toggle=\"tooltip\" data-html=\"true\">depreciation</a> DECREASE..",
    "Use the above production function and savings = investment identity to deduce per capita capital accumulation evolves according to.",
    "The per capita capital stock growths, but at a decreasing rate: see below. Eventually growth converges to zero. In this long-run steady state.",
    "// All text messages are for testing purposes only. //"
    ]
end

def techincrease
    render json: [
    "Great, <a data-original-title=\"Technology/Labour efficiency\" onclick=\"symbolClick('tech', 'Technology/Labour efficiency')\" class=\"tooltipClass\" data-toggle=\"tooltip\" data-html=\"true\">technology</a> is improving!",
    "Economy B will (almost) always have more capital. Why “almost”? Because their steady-states are identical. The steady state does not depend on initial conditions, and only on technology, saving andpopulation growth parameters.",
    "Although a higher savings rate generates more per capita capital with which to generate more output, a constant increase in s cannot always lead to a higher level of per capita consumption. Clearly a very high savings rate implies people are consuming very little of that very large amount of output that is being produced.",
    "// All text messages are for testing purposes only. //"
    ]
end

def techdecrease
    render json: [
    "Oups this is not idea; <a data-original-title=\"Technology/Labour efficiency\" onclick=\"symbolClick('tech', 'Technology/Labour efficiency')\" class=\"tooltipClass\" data-toggle=\"tooltip\" data-html=\"true\">tech</a> decrease! Instead of eating a lot they plant 80% of the kernels. The result is an enormous crop the next season. They again eat very little, invest 80% of the output toward production, and so on. The total level of output per capital skyrockets, but is welfare truly higher? If we measure welfare by consumption clearly it is not.",
    "Although the Solow Model does not itself build in any sense of a “business cycle”, or suggest anything like a shock (all plots clearly show the model predicts perfectly uniform growth!), we ourselves can introduce a shock at any time.",
    "Consider a scenario where an economy experiences two negative shocks, one small and one large, and a medium positive shock. The small negative shock (at t = 50) is causes by news that a sector (e.g. the energy sector) has been substantially over invested, profits are predicted to be negative, and therefore investment capital is withdrawn: k falls by 20%. The large negative shock (at t = 100) is due to a massive storm: k falls by 50%. The positive shock (at t = 150) is due to a capital infusion by the International Monetary Fund: k instantly increases by 15%.",
    "// All text messages are for testing purposes only. //"
    ]
end

def savingsfunction
    render json: [
    "The savings function plots the quantity of <a data-original-title=\"The Savings Rate\" onclick=\"symbolClick('savings', 'The Savings Rate')\" class=\"tooltipClass\" data-toggle=\"tooltip\" data-html=\"true\">savings</a> as a function of the level of <a data-original-title=\"Capital/Worker\" onclick=\"symbolClick('K', 'Capital/Worker')\" class=\"tooltipClass\" data-toggle=\"tooltip\" data-html=\"true\">capital</a>. How about an increase in <a data-original-title=\"The Savings Rate\" onclick=\"symbolClick('savings', 'The Savings Rate')\" class=\"tooltipClass\" data-toggle=\"tooltip\" data-html=\"true\">s</a>.",
    "It's kind of not very interesting.,",
    "Now please check that the <a data-original-title=\"The Depreciation Function\" onclick=\"symbolClick('depfunction', 'The Depreciation Function')\" class=\"tooltipClass\" data-toggle=\"tooltip\" data-html=\"true\">depreciation</a> function markup works ok. I hope so.",
    "// All text messages are for testing purposes only. //"
    ]
end

def depfunction
    render json: [
    "The <a data-original-title=\"The Deprecion Rate\" onclick=\"symbolClick('dep', 'The Deprecion Rate')\" class=\"tooltipClass\" data-toggle=\"tooltip\" data-html=\"true\">depreciation</a> function is a function of the level of <a data-original-title=\"Output/Worker\" onclick=\"symbolClick('Y', 'Output/Worker')\" class=\"tooltipClass\" data-toggle=\"tooltip\" data-html=\"true\">output/worker</a>. When the steady-state level of <a data-original-title=\"Capital/Worker\" onclick=\"symbolClick('K', 'Capital/Worker')\" class=\"tooltipClass\" data-toggle=\"tooltip\" data-html=\"true\">capital</a> increase, so does the steady state level of <a data-original-title=\"Steady-State Investment/Worker\" onclick=\"symbolClick('i', 'Steady-State Investment/Worker')\" class=\"tooltipClass\" data-toggle=\"tooltip\" data-html=\"true\">investment</a> needed to maintain the <a data-original-title=\"Capital/Worker\" onclick=\"symbolClick('K', 'Capital/Worker')\" class=\"tooltipClass\" data-toggle=\"tooltip\" data-html=\"true\">capital stock</a>. As long as <a data-original-title=\"The Deprecion Rate\" onclick=\"symbolClick('dep', 'The Deprecion Rate')\" class=\"tooltipClass\" data-toggle=\"tooltip\" data-html=\"true\">depreciation</a> stays the same.",
    "It's not super super cool.",
    "",
    "// All text messages are for testing purposes only. //"
    ]
end

def techfunction
    render json: [
    "The prodution function plots the quantity of <a data-original-title=\"Steady-State Output/Worker\" onclick=\"symbolClick('y', 'Steady-State Output/Worker')\" class=\"tooltipClass\" data-toggle=\"tooltip\" data-html=\"true\">output</a> as a function of the level of <a data-original-title=\"Capital/Worker\" onclick=\"symbolClick('K', 'Capital/Worker')\" class=\"tooltipClass\" data-toggle=\"tooltip\" data-html=\"true\">capital/worker</a>.",
    "It's really super super cool.",
    "",
    "// All text messages are for testing purposes only. //"
    ]
end

def alpha
    render json: [
    "Alpha is the share of <a data-original-title=\"Capital/Worker\" onclick=\"symbolClick('K', 'Capital/Worker')\" class=\"tooltipClass\" data-toggle=\"tooltip\" data-html=\"true\">capital</a> in production..",
    "",
    "",
    "// All text messages are for testing purposes only. //"
    ]
end

def dep
    render json: [
    "Dep is the share of output that depreciates.. How about more <a data-original-title=\"The Savings Rate\" onclick=\"symbolClick('savings', 'The Savings Rate')\" class=\"tooltipClass\" data-toggle=\"tooltip\" data-html=\"true\">savings</a>.",
    "",
    "",
    "// All text messages are for testing purposes only. //"
    ]
end

def savings
    render json: [
    "The savings rate is the share of <a data-original-title=\"Output/Worker\" onclick=\"symbolClick('Y', 'Output/Worker')\" class=\"tooltipClass\" data-toggle=\"tooltip\" data-html=\"true\">output</a> that is saved..",
    "Hello to the world of <a data-original-title=\"Steady-State Capital/Worker\" onclick=\"symbolClick('k', 'Steady-State Capital/Worker')\" class=\"tooltipClass\" data-toggle=\"tooltip\" data-html=\"true\">capital</a>.",
    "",
    "// All text messages are for testing purposes only. //"
    ]
end

def tech
    render json: [
    "The production TECHNOLOGY.",
    "",
    "",
    "// All text messages are for testing purposes only. //"
    ]
end

def k
    render json: [
    "The steady state level of Capital.",
    "",
    "",
    "// All text messages are for testing purposes only. //"
    ]
end

def y
    render json: [
    "The steady state level of OUTPUT is .",
    "",
    "",
    "// All text messages are for testing purposes only. //"
    ]
end

def c
    render json: [
    "The steady state level of Consumption .",
    "",
    "",
    "// All text messages are for testing purposes only. //"
    ]
end

def i
    render json: [
    "The steady state level of investment/savings is ",
    "",
    "",
    "// All text messages are for testing purposes only. //"
    ]
end

def MPK
    render json: [
    "The level of capital/worker is a key determinant of <a data-original-title=\"Output/Worker\" onclick=\"symbolClick('Y', 'Output/Worker')\" class=\"tooltipClass\" data-toggle=\"tooltip\" data-html=\"true\">output</a>. The higher the steady state level of <a data-original-title=\"Steady-State Output/Worker\" onclick=\"symbolClick('y', 'Steady-State Output/Worker')\" class=\"tooltipClass\" data-toggle=\"tooltip\" data-html=\"true\">output</a>.",
    "The <a data-original-title=\"The Savings Rate\" onclick=\"symbolClick('savings', 'The Savings Rate')\" class=\"tooltipClass\" data-toggle=\"tooltip\" data-html=\"true\">savings</a> rate needs to increase as <a data-original-title=\"Steady-State Capital/Worker\" onclick=\"symbolClick('k', 'Steady-State Capital/Worker')\" class=\"tooltipClass\" data-toggle=\"tooltip\" data-html=\"true\">capital increases</a> as we also have higher <a data-original-title=\"The Deprecion Rate\" onclick=\"symbolClick('dep', 'The Deprecion Rate')\" class=\"tooltipClass\" data-toggle=\"tooltip\" data-html=\"true\">depreciation</a>.",
    "Overall, the <a data-original-title=\"Marginal Product of Capital\" onclick=\"symbolClick('MPK', 'Marginal Product of Capital')\" class=\"tooltipClass\" data-toggle=\"tooltip\" data-html=\"true\">MPK</a> stays the same. Society enjoys a higher level of <a data-original-title=\"Steady-State Consumption/Worker\" onclick=\"symbolClick('c', 'Steady-State Consumption/Worker')\" class=\"tooltipClass\" data-toggle=\"tooltip\" data-html=\"true\">consumption</a>.",
    "// All text messages are for testing purposes only. //"
    ]
end

def K
    render json: [
    "The level of capital/worker is a key determinant of <a data-original-title=\"Output/Worker\" onclick=\"symbolClick('Y', 'Output/Worker')\" class=\"tooltipClass\" data-toggle=\"tooltip\" data-html=\"true\">output</a>. The higher the steady state level of <a data-original-title=\"Steady-State Output/Worker\" onclick=\"symbolClick('y', 'Steady-State Output/Worker')\" class=\"tooltipClass\" data-toggle=\"tooltip\" data-html=\"true\">output</a>.",
    "The <a data-original-title=\"The Savings Rate\" onclick=\"symbolClick('savings', 'The Savings Rate')\" class=\"tooltipClass\" data-toggle=\"tooltip\" data-html=\"true\">savings</a> rate needs to increase as <a data-original-title=\"Steady-State Capital/Worker\" onclick=\"symbolClick('k', 'Steady-State Capital/Worker')\" class=\"tooltipClass\" data-toggle=\"tooltip\" data-html=\"true\">capital increases</a> as we also have higher <a data-original-title=\"The Deprecion Rate\" onclick=\"symbolClick('dep', 'The Deprecion Rate')\" class=\"tooltipClass\" data-toggle=\"tooltip\" data-html=\"true\">depreciation</a>.",
    "Overall, the <a data-original-title=\"Marginal Product of Capital\" onclick=\"symbolClick('MPK', 'Marginal Product of Capital')\" class=\"tooltipClass\" data-toggle=\"tooltip\" data-html=\"true\">MPK</a> stays the same. Society enjoys a higher level of <a data-original-title=\"Steady-State Consumption/Worker\" onclick=\"symbolClick('c', 'Steady-State Consumption/Worker')\" class=\"tooltipClass\" data-toggle=\"tooltip\" data-html=\"true\">consumption</a>.",
    "// All text messages are for testing purposes only. //"
    ]
end

def Y
    render json: [
    "Output or in other words, GDP! :).",
    "",
    "",
    "// All text messages are for testing purposes only. //"
    ]
end

end
