gadgetlikelihood("likelihood", gd$dir, missingOkay=T) %>%
    gadget_update("penalty",
                  name = "bounds",
                  weight = "0.5",
                  data = data.frame(
                      switch = c("default"),
                      power = c(2),
                      upperW=10000,
                      lowerW=10000,
                      stringsAsFactors = FALSE)) %>%
    gadget_update("understocking",
                  name = "understocking",
                  weight = "100") %>%
    gadget_update("catchdistribution",
                  name = "ldist_spr",
                  weight = 1,
                  data = ldist_spr[[1]],
                  fleetnames = c("spr"),
                  stocknames = stock) %>%
    gadget_update("catchdistribution",
                  name = "aldist_spr",
                  weight = 1,
                  data = aldist_spr[[1]],
                  fleetnames = c("spr"),
                  stocknames = stock) %>%
    gadget_update("catchdistribution",
                  name = "ldist_aut",
                  weight = 1,
                  data = ldist_aut[[1]],
                  fleetnames = c("aut"),
                  stocknames = stock) %>%
    gadget_update("catchdistribution",
                  name = "aldist_aut",
                  weight = 1,
                  data = aldist_aut[[1]],
                  fleetnames = c("aut"),
                  stocknames = stock) %>%
    gadget_update("catchdistribution",
                  name = "ldist_comm",
                  weight = 1,
                  data = ldist_comm[[1]],
                  fleetnames = c("comm"),
                  stocknames = stock) %>%
    gadget_update("catchdistribution",
                  name = "aldist_comm",
                  weight = 1,
                  data = aldist_comm[[1]],
                  fleetnames = c("comm"),
                  stocknames = stock) %>%
    gadget_update("surveyindices",
                  name = "spr_si_20_35",
                  weight = 1,
                  data = spr_si_20_35[[1]],
                  fittype = "fixedslopeloglinearfit",
                  slope = 1,
                  stocknames = stock) %>%
    gadget_update("surveyindices",
                  name = "spr_si_35_45",
                  weight = 1,
                  data = spr_si_35_45[[1]],
                  fittype = "fixedslopeloglinearfit",
                  slope = 1,
                  stocknames = stock) %>%
    gadget_update("surveyindices",
                  name = "spr_si_45_60",
                  weight = 1,
                  data = spr_si_45_60[[1]],
                  fittype = "fixedslopeloglinearfit",
                  slope = 1,
                  stocknames = stock) %>%
    gadget_update("surveyindices",
                  name = "spr_si_60_80",
                  weight = 1,
                  data = spr_si_60_80[[1]],
                  fittype = "fixedslopeloglinearfit",
                  slope = 1,
                  stocknames = stock) %>%
    gadget_update("surveyindices",
                  name = "spr_si_80_pl",
                  weight = 1,
                  data = spr_si_80_pl[[1]],
                  fittype = "fixedslopeloglinearfit",
                  slope = 1,
                  stocknames = stock) %>%
    gadget_update("surveyindices",
                  name = "aut_si_20_35",
                  weight = 1,
                  data = aut_si_20_35[[1]],
                  fittype = "fixedslopeloglinearfit",
                  slope = 1,
                  stocknames = stock) %>%
    gadget_update("surveyindices",
                  name = "aut_si_35_45",
                  weight = 1,
                  data = aut_si_35_45[[1]],
                  fittype = "fixedslopeloglinearfit",
                  slope = 1,
                  stocknames = stock) %>%
    gadget_update("surveyindices",
                  name = "aut_si_45_60",
                  weight = 1,
                  data = aut_si_45_60[[1]],
                  fittype = "fixedslopeloglinearfit",
                  slope = 1,
                  stocknames = stock) %>%
    gadget_update("surveyindices",
                  name = "aut_si_60_80",
                  weight = 1,
                  data = aut_si_60_80[[1]],
                  fittype = "fixedslopeloglinearfit",
                  slope = 1,
                  stocknames = stock) %>%
    gadget_update("surveyindices",
                  name = "aut_si_80_pl",
                  weight = 1,
                  data = aut_si_80_pl[[1]],
                  fittype = "fixedslopeloglinearfit",
                  slope = 1,
                  stocknames = stock) %>%
    write.gadget.file(gd$dir)
