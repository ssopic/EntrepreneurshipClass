#set home directory
setwd("C:\\Users\\silvi\\OneDrive\\Desktop\\Entrepreneurship\\Entrepreneurship segmentation")
#Changing the metadata to have meaningful names
SegmentationDataTotal <- Entrepreneurship.class.project.survey.ENG
rm(Entrepreneurship.class.project.survey.ENG)
#removing the timestamp
SegmentationDataTotal <- SegmentationDataTotal[,-1]
names(SegmentationDataTotal)
#Changing the variable names
######
# to do this we need the data.table package
library(data.table)
setnames(SegmentationDataTotal, "How.old.are.you.", "Age")#AGE
setnames(SegmentationDataTotal, "What.is.your.marital.status.", "MaritalStatus")#Marital Status
setnames(SegmentationDataTotal, "What.is.the.highest.degree.or.level.of.school.you.completed.","Education")
setnames(SegmentationDataTotal, "What.is.your.current.employment.status.", "Employment")
setnames(SegmentationDataTotal, "What.is.your.annual.household.income.", "HouseholdIncome")
setnames(SegmentationDataTotal, "How.often.do.you.shop.for.home.decorations.","HowOftenDoTheyPurchaseDecor" )
setnames(SegmentationDataTotal, "Which.decor.do.you.buy.","WhichDecorDoTheyLike")
setnames(SegmentationDataTotal, "How.often.are.those.decorations.potted.flowers.","HowOftenPottedFlowers")
setnames(SegmentationDataTotal, "Just.in.short.please.say.why.you.do.not.like.potted.plants", "DislikePottedFlowers_Qualitative")
setnames(SegmentationDataTotal, "Just.in.short.please.say.why.other.decoration.is.better.for.you", "LikeOtherDecor_Qualitative")
setnames(SegmentationDataTotal, "If.potted.plants.did.not.take.so.much.time.to.take.care.of..I.would.buy.them.more.often.","DislikeTime")
setnames(SegmentationDataTotal, "If.potted.plants.did.not.cost.so.much..I.would.buy.them.more.often.", "DislikeCost")
setnames(SegmentationDataTotal, "If.potted.plants.were.not.so.hard.to.take.care.off..I.would.buy.them.more.often.", "DislikeHardToTakeCareOf")
setnames(SegmentationDataTotal, "If.potted.plants.did.not.take.up.so.much.room..I.would.buy.them.more.often.", "DislikeRoom")
setnames(SegmentationDataTotal, "Please.select.how.you.feel.about.having.or.not.having.the.features.mentioned..If.my.plant.pot.had.a.built.in.watering.functionality..","KANO_WateringYES")
setnames(SegmentationDataTotal,"Please.select.how.you.feel.about.having.or.not.having.the.features.mentioned..If.my.plant.pot.did.not.have.a.built.in.watering.functionality..", "KANO_WateringNO")
setnames(SegmentationDataTotal, "Please.select.how.you.feel.about.having.or.not.having.the.features.mentioned..If.my.plant.pot.had.a.built.in.fertilization.function.","KANO_FertilizationYES")
setnames(SegmentationDataTotal, "Please.select.how.you.feel.about.having.or.not.having.the.features.mentioned..If.my.plant.pot.did.not.have.a.built.in.fertilization.function.","KANO_FertilizationNO")
setnames(SegmentationDataTotal,"Please.select.how.you.feel.about.having.or.not.having.the.features.mentioned..If.the.plant.pot.had.a.function.to.make.sure.the.plant.did.not.die.","KANO_PlantImmortal_YES")
setnames(SegmentationDataTotal,"Please.select.how.you.feel.about.having.or.not.having.the.features.mentioned..If.the.plant.pot.did.not.have.a.function.to.make.sure.the.plant.did.not.die.","KANO_PlantImmortal_NO")
setnames(SegmentationDataTotal,"Please.select.how.you.feel.about.having.or.not.having.the.features.mentioned..If.I.could.select.the.difficulty.of.taking.care.of.the.plant.","KANO_SetDifficulty_YES")
setnames(SegmentationDataTotal, "Please.select.how.you.feel.about.having.or.not.having.the.features.mentioned..If.I.could.not.select.the.difficulty.of.taking.care.of.the.plant.","KANO_SetDifficulty_NO")
setnames(SegmentationDataTotal,"Please.select.how.you.feel.about.having.or.not.having.the.features.mentioned..If.the.plant.pot.was.made.of.recycled.material.","KANO_RecycledMaterial_YES")
setnames(SegmentationDataTotal,"Please.select.how.you.feel.about.having.or.not.having.the.features.mentioned..If.the.plant.pot.was.not.made.of.recycled.material.","KANO_RecycledMaterial_NO")
setnames(SegmentationDataTotal,"Please.select.how.you.feel.about.having.or.not.having.the.features.mentioned..If.I.could.select.the.plant.pot.in.different.sizes.","KANO_PotSize_YES")
setnames(SegmentationDataTotal,"Please.select.how.you.feel.about.having.or.not.having.the.features.mentioned..If.I.could.not.select.the.plant.pot.in.different.sizes.","KANO_Potsize_NO")
setnames(SegmentationDataTotal, "Please.select.how.you.feel.about.having.or.not.having.the.features.mentioned..If.I.could.select.new.skins.for.the.plant.pot.","KANO_SetSkins_YES")
setnames(SegmentationDataTotal,"Please.select.how.you.feel.about.having.or.not.having.the.features.mentioned..If.I.could.not.select.new.skins.for.the.plant.pot.","KANO_SetSkins_NO")
setnames(SegmentationDataTotal,"Please.select.how.you.feel.about.having.or.not.having.the.features.mentioned..If.I.could.select.the.exact.plant.for.my.plant.pot.","KANO_DecideOnPlant_YES")
setnames(SegmentationDataTotal, "Please.select.how.you.feel.about.having.or.not.having.the.features.mentioned..If.I.could.not.select.the.exact.plant.for.my.plant.pot.","KANO_DecideOnPlant_NO")
setnames(SegmentationDataTotal,"Please.select.how.likely.you.are.to.buy.the.product..with.10.being.the.maximum.likelihood.and.1.being.the.lowest...The.pot.makes.sure.that.your.plant.does.not.die..is.made.out.of.recycled.materials..you.can.not.select.which.plant.you.want..and.it.costs.60â...","PlantImmortal_MaterialRecycled_SelectionNO_60E")
setnames(SegmentationDataTotal,"Please.select.how.likely.you.are.to.buy.the.product..with.10.being.the.maximum.likelihood.and.1.being.the.lowest...The.pot.makes.sure.that.your.plant.does.not.die..is.made.out.of.recycled.materials..you.can.not.select.which.plant.you.want.and.it.costs.80â...","PlantImmortal_MaterialRecycled_SelectionNO_80E")
setnames(SegmentationDataTotal,"Please.select.how.likely.you.are.to.buy.the.product..with.10.being.the.maximum.likelihood.and.1.being.the.lowest...The.pot.makes.sure.that.your.plant.does.not.die..is.made.out.of.recycled.materials..you.can.not.select.which.plant.you.want..and.it.costs.100â...","PlantImmortal_MaterialRecycled_SelectionNO_100E")
setnames(SegmentationDataTotal,"Please.select.how.likely.you.are.to.buy.the.product..with.10.being.the.maximum.likelihood.and.1.being.the.lowest...The.pot.makes.sure.that.your.plant.does.not.die..is.not.made.out.of.recycled.materials..you.can.not.select.the.plant..and.costs.60â...","PlantImmortal_MaterialRegular_SelectionNO_100E")
setnames(SegmentationDataTotal,"Please.select.how.likely.you.are.to.buy.the.product..with.10.being.the.maximum.likelihood.and.1.being.the.lowest...The.pot.makes.sure.that.your.plant.does.not.die..is.not.made.out.of.recycled.materials..you.can.not.select.the.plant..and.it.costs.80â...","PlantImmortal_MaterialRegular_SelectionNO_80E")
setnames(SegmentationDataTotal,"Please.select.how.likely.you.are.to.buy.the.product..with.10.being.the.maximum.likelihood.and.1.being.the.lowest...The.pot.makes.sure.that.your.plant.does.not.die..is.not.made.out.of.recycled.materials..you.can.not.select.the.plant..and.it.costs.100â...","PlantImmortal_MaterialRegular_SelectionNO_100E")
setnames(SegmentationDataTotal,"Please.select.how.likely.you.are.to.buy.the.product..with.10.being.the.maximum.likelihood.and.1.being.the.lowest...The.pot.makes.sure.that.your.plant.does.not.die..is.made.out.of.recycled.materials..you.can.select.which.plant.you.want..and.it.costs.60â...","PlantImmortal_RecycledMaterials_SelectionYES_60E")
setnames(SegmentationDataTotal,"Please.select.how.likely.you.are.to.buy.the.product..with.10.being.the.maximum.likelihood.and.1.being.the.lowest...The.pot.makes.sure.that.your.plant.does.not.die..is.made.out.of.recycled.materials..you.can.select.which.plant.you.want.and.it.costs.80â...","PlantImmortal_RecycledMaterials_SelectionYes_80E")
setnames(SegmentationDataTotal,"Please.select.how.likely.you.are.to.buy.the.product..with.10.being.the.maximum.likelihood.and.1.being.the.lowest...The.pot.makes.sure.that.your.plant.does.not.die..is.made.out.of.recycled.materials..you.can.select.which.plant.you.want..and.it.costs.100â...","PlantImmortal_RecycledMaterials_SelectionYES_100E")
setnames(SegmentationDataTotal,"Please.select.how.likely.you.are.to.buy.the.product..with.10.being.the.maximum.likelihood.and.1.being.the.lowest...The.pot.makes.sure.that.your.plant.does.not.die..is.not.made.out.of.recycled.materials..you.can.select.the.plant..and.costs.60â...","PlantImmortal_RegularMaterial_SelectionYES_60E")
setnames(SegmentationDataTotal,"Please.select.how.likely.you.are.to.buy.the.product..with.10.being.the.maximum.likelihood.and.1.being.the.lowest...The.pot.makes.sure.that.your.plant.does.not.die..is.not.made.out.of.recycled.materials..you.can.select.the.plant..and.it.costs.80â...","PlantImmortal_RegularMaterial_SelectionYES_80E")
setnames(SegmentationDataTotal,"Please.select.how.likely.you.are.to.buy.the.product..with.10.being.the.maximum.likelihood.and.1.being.the.lowest...The.pot.makes.sure.that.your.plant.does.not.die..is.not.made.out.of.recycled.materials..you.can.select.the.plant..and.it.costs.80â...","PlantImmortal_RegularMaterial_SelectionYES_80E")
setnames(SegmentationDataTotal,"Please.select.how.likely.you.are.to.buy.the.product..with.10.being.the.maximum.likelihood.and.1.being.the.lowest...The.pot.makes.sure.that.your.plant.does.not.die..is.not.made.out.of.recycled.materials..you.can.select.the.plant..and.it.costs.80â...","PlantImmortal_RegularMaterial_SelectionYES_80E")
setnames(SegmentationDataTotal,"Please.select.how.likely.you.are.to.buy.the.product..with.10.being.the.maximum.likelihood.and.1.being.the.lowest...The.pot.makes.sure.that.your.plant.does.not.die..is.not.made.out.of.recycled.materials..you.can.select.the.plant..and.it.costs.100â...","PlantImmortal_RegularMaterial_SelectionYES_100E")
setnames(SegmentationDataTotal,"Please.select.how.likely.you.are.to.buy.the.product..with.10.being.the.maximum.likelihood.and.1.being.the.lowest...The.pot.does.not.make.sure.that.your.plant.does.not.die..is.made.out.of.recycled.materials..you.can.not.select.which.plant.you.want..and.it.costs.60â...", "PlantDIE_RecycledMaterial_SelectionNO_60E")
setnames(SegmentationDataTotal,"Please.select.how.likely.you.are.to.buy.the.product..with.10.being.the.maximum.likelihood.and.1.being.the.lowest...The.pot.does.not.make.sure.that.your.plant.does.not.die..is.made.out.of.recycled.materials..you.can.not.select.which.plant.you.want.and.it.costs.80â...","PlantDIE_RecycledMaterial_SelectionYes_80E")
setnames(SegmentationDataTotal,"Please.select.how.likely.you.are.to.buy.the.product..with.10.being.the.maximum.likelihood.and.1.being.the.lowest...The.pot.does.not.make.sure.that.your.plant.does.not.die..is.made.out.of.recycled.materials..you.can.not.select.which.plant.you.want..and.it.costs.100â...","PlantDIE_RecycledMaterial_SelectionNO_100E")
setnames(SegmentationDataTotal,"Please.select.how.likely.you.are.to.buy.the.product..with.10.being.the.maximum.likelihood.and.1.being.the.lowest...The.pot.does.not.make.sure.that.your.plant.does.not.die..is.not.made.out.of.recycled.materials..you.can.not.select.the.plant..and.costs.60â...","PlantDIE_RegularMaterial_SelectionNO_60E")
setnames(SegmentationDataTotal,"Please.select.how.likely.you.are.to.buy.the.product..with.10.being.the.maximum.likelihood.and.1.being.the.lowest...The.pot.does.not.make.sure.that.your.plant.does.not.die..is.not.made.out.of.recycled.materials..you.can.not.select.the.plant..and.it.costs.80â...","PlantDIE_RegularMaterial_SelectionNO_80E")
setnames(SegmentationDataTotal,"Please.select.how.likely.you.are.to.buy.the.product..with.10.being.the.maximum.likelihood.and.1.being.the.lowest...The.pot.does.not.make.sure.that.your.plant.does.not.die..is.not.made.out.of.recycled.materials..you.can.not.select.the.plant..and.it.costs.100â...","PlantDIE_RegularMaterial_SelectionNO_100E")
setnames(SegmentationDataTotal,"Please.select.how.likely.you.are.to.buy.the.product..with.10.being.the.maximum.likelihood.and.1.being.the.lowest...The.pot.does.not.make.sure.that.your.plant.does.not.die..is.not.made.out.of.recycled.materials..you.can.not.select.the.plant..and.it.costs.100â...","PlantDIE_RegularMaterial_SelectionNO_100E")
setnames(SegmentationDataTotal,"Please.select.how.likely.you.are.to.buy.the.product..with.10.being.the.maximum.likelihood.and.1.being.the.lowest...The.pot.does.not.make.sure.that.your.plant.does.not.die..is.made.out.of.recycled.materials..you.can.select.which.plant.you.want..and.it.costs.60â...","PlantDIE_RecycledMaterial_SelectionYES_60E")
setnames(SegmentationDataTotal,"Please.select.how.likely.you.are.to.buy.the.product..with.10.being.the.maximum.likelihood.and.1.being.the.lowest...The.pot.does.not.make.sure.that.your.plant.does.not.die..is.made.out.of.recycled.materials..you.can.select.which.plant.you.want.and.it.costs.80â...","PlantDIE_RecycledMaterial_SelectionYES_80E")
setnames(SegmentationDataTotal,"Please.select.how.likely.you.are.to.buy.the.product..with.10.being.the.maximum.likelihood.and.1.being.the.lowest...The.pot.does.not.make.sure.that.your.plant.does.not.die..is.made.out.of.recycled.materials..you.can.select.which.plant.you.want..and.it.costs.100â...","PlantDIE_RecycledMaterial_SelectionYES_100E")
setnames(SegmentationDataTotal,"Please.select.how.likely.you.are.to.buy.the.product..with.10.being.the.maximum.likelihood.and.1.being.the.lowest...The.pot.does.not.make.sure.that.your.plant.does.not.die..is.not.made.out.of.recycled.materials..you.can.select.the.plant..and.costs.60â...","PlantDIE_RegularMaterial_SelectionYES_60E")
setnames(SegmentationDataTotal,"Please.select.how.likely.you.are.to.buy.the.product..with.10.being.the.maximum.likelihood.and.1.being.the.lowest...The.pot.does.not.make.sure.that.your.plant.does.not.die..is.not.made.out.of.recycled.materials..you.can.select.the.plant..and.it.costs.80â...","PlantDIE_RegularMaterial_SelectionYES_80E")
setnames(SegmentationDataTotal,"Please.select.how.likely.you.are.to.buy.the.product..with.10.being.the.maximum.likelihood.and.1.being.the.lowest...The.pot.does.not.make.sure.that.your.plant.does.not.die..is.not.made.out.of.recycled.materials..you.can.select.the.plant..and.it.costs.100â...","PlantDIE_RegularMaterial_SelectionYES_100E")
names(SegmentationDataTotal)
#####
##Testing out dpylr to get the data into kano terms
library(dplyr)
#First we transform the survey questionaires into numbers so we can use them in the case_when statements
#As a note; the higher values(4,5) mean It must be that way and I like it that way, 3 means neutral, and 1 and 2 are I can live with it that way and I don't like it that way respecitvely

#KANO Watering yes and no
SegmentationDataTotal$KANO_WateringYES <- ifelse(SegmentationDataTotal$KANO_WateringYES=="I am neutral",3,ifelse(SegmentationDataTotal$KANO_WateringYES=="It must be that way",5,ifelse(SegmentationDataTotal$KANO_WateringYES=="I like it that way",4,ifelse(SegmentationDataTotal$KANO_WateringYES=="I can live with it that way",2,1))))
SegmentationDataTotal$KANO_WateringNO <- ifelse(SegmentationDataTotal$KANO_WateringNO=="I am neutral",3,ifelse(SegmentationDataTotal$KANO_WateringNO=="It must be that way",5,ifelse(SegmentationDataTotal$KANO_WateringNO=="I like it that way",4,ifelse(SegmentationDataTotal$KANO_WateringNO=="I can live with it that way",2,1))))

#Kano decide on plant yes and no
SegmentationDataTotal$KANO_DecideOnPlant_NO <- ifelse(SegmentationDataTotal$KANO_DecideOnPlant_NO=="I am neutral",3,ifelse(SegmentationDataTotal$KANO_DecideOnPlant_NO=="It must be that way",5,ifelse(SegmentationDataTotal$KANO_DecideOnPlant_NO=="I like it that way",4,ifelse(SegmentationDataTotal$KANO_DecideOnPlant_NO=="I can live with it that way",2,1))))
SegmentationDataTotal$KANO_DecideOnPlant_YES <- ifelse(SegmentationDataTotal$KANO_DecideOnPlant_YES=="I am neutral",3,ifelse(SegmentationDataTotal$KANO_DecideOnPlant_YES=="It must be that way",5,ifelse(SegmentationDataTotal$KANO_DecideOnPlant_YES=="I like it that way",4,ifelse(SegmentationDataTotal$KANO_DecideOnPlant_YES=="I can live with it that way",2,1))))

#KANO set skins yes and no
SegmentationDataTotal$KANO_SetSkins_YES <- ifelse(SegmentationDataTotal$KANO_SetSkins_YES=="I am neutral",3,ifelse(SegmentationDataTotal$KANO_SetSkins_YES=="It must be that way",5,ifelse(SegmentationDataTotal$KANO_SetSkins_YES=="I like it that way",4,ifelse(SegmentationDataTotal$KANO_SetSkins_YES=="I can live with it that way",2,1))))
SegmentationDataTotal$KANO_SetSkins_NO <- ifelse(SegmentationDataTotal$KANO_SetSkins_NO=="I am neutral",3,ifelse(SegmentationDataTotal$KANO_SetSkins_NO=="It must be that way",5,ifelse(SegmentationDataTotal$KANO_SetSkins_NO=="I like it that way",4,ifelse(SegmentationDataTotal$KANO_SetSkins_NO=="I can live with it that way",2,1))))

#KANO Plant Immortal yes and no
SegmentationDataTotal$KANO_PlantImmortal_YES <- ifelse(SegmentationDataTotal$KANO_PlantImmortal_YES=="I am neutral",3,ifelse(SegmentationDataTotal$KANO_PlantImmortal_YES=="It must be that way",5,ifelse(SegmentationDataTotal$KANO_PlantImmortal_YES=="I like it that way",4,ifelse(SegmentationDataTotal$KANO_PlantImmortal_YES=="I can live with it that way",2,1))))
SegmentationDataTotal$KANO_PlantImmortal_NO <- ifelse(SegmentationDataTotal$KANO_PlantImmortal_NO=="I am neutral",3,ifelse(SegmentationDataTotal$KANO_PlantImmortal_NO=="It must be that way",5,ifelse(SegmentationDataTotal$KANO_PlantImmortal_NO=="I like it that way",4,ifelse(SegmentationDataTotal$KANO_PlantImmortal_NO=="I can live with it that way",2,1))))

#KANO fertilization yes and no
SegmentationDataTotal$KANO_FertilizationYES <- ifelse(SegmentationDataTotal$KANO_FertilizationYES=="I am neutral",3,ifelse(SegmentationDataTotal$KANO_FertilizationYES=="It must be that way",5,ifelse(SegmentationDataTotal$KANO_FertilizationYES=="I like it that way",4,ifelse(SegmentationDataTotal$KANO_FertilizationYES=="I can live with it that way",2,1))))

SegmentationDataTotal$KANO_FertilizationNO <- ifelse(SegmentationDataTotal$KANO_FertilizationNO=="I am neutral",3,ifelse(SegmentationDataTotal$KANO_FertilizationNO=="It must be that way",5,ifelse(SegmentationDataTotal$KANO_FertilizationNO=="I like it that way",4,ifelse(SegmentationDataTotal$KANO_FertilizationNO=="I can live with it that way",2,1))))

#KANO pot size yes and no 
SegmentationDataTotal$KANO_PotSize_YES <- ifelse(SegmentationDataTotal$KANO_PotSize_YES=="I am neutral",3,ifelse(SegmentationDataTotal$KANO_PotSize_YES=="It must be that way",5,ifelse(SegmentationDataTotal$KANO_PotSize_YES=="I like it that way",4,ifelse(SegmentationDataTotal$KANO_PotSize_YES=="I can live with it that way",2,1))))
SegmentationDataTotal$KANO_Potsize_NO <- ifelse(SegmentationDataTotal$KANO_Potsize_NO=="I am neutral",3,ifelse(SegmentationDataTotal$KANO_Potsize_NO=="It must be that way",5,ifelse(SegmentationDataTotal$KANO_Potsize_NO=="I like it that way",4,ifelse(SegmentationDataTotal$KANO_Potsize_NO=="I can live with it that way",2,1))))
#KANO recycled material yes and no 
SegmentationDataTotal$KANO_RecycledMaterial_YES <- ifelse(SegmentationDataTotal$KANO_RecycledMaterial_YES=="I am neutral",3,ifelse(SegmentationDataTotal$KANO_RecycledMaterial_YES=="It must be that way",5,ifelse(SegmentationDataTotal$KANO_RecycledMaterial_YES=="I like it that way",4,ifelse(SegmentationDataTotal$KANO_RecycledMaterial_YES=="I can live with it that way",2,1))))
SegmentationDataTotal$KANO_RecycledMaterial_NO <- ifelse(SegmentationDataTotal$KANO_RecycledMaterial_NO=="I am neutral",3,ifelse(SegmentationDataTotal$KANO_RecycledMaterial_NO=="It must be that way",5,ifelse(SegmentationDataTotal$KANO_RecycledMaterial_NO=="I like it that way",4,ifelse(SegmentationDataTotal$KANO_RecycledMaterial_NO=="I can live with it that way",2,1))))

#KANO set difficulty yes and no
SegmentationDataTotal$KANO_SetDifficulty_YES <- ifelse(SegmentationDataTotal$KANO_SetDifficulty_YES=="I am neutral",3,ifelse(SegmentationDataTotal$KANO_SetDifficulty_YES=="It must be that way",5,ifelse(SegmentationDataTotal$KANO_SetDifficulty_YES=="I like it that way",4,ifelse(SegmentationDataTotal$KANO_SetDifficulty_YES=="I can live with it that way",2,1))))
SegmentationDataTotal$KANO_SetDifficulty_NO <- ifelse(SegmentationDataTotal$KANO_SetDifficulty_NO=="I am neutral",3,ifelse(SegmentationDataTotal$KANO_SetDifficulty_NO=="It must be that way",5,ifelse(SegmentationDataTotal$KANO_SetDifficulty_NO=="I like it that way",4,ifelse(SegmentationDataTotal$KANO_SetDifficulty_NO=="I can live with it that way",2,1))))

#After settin the values to numeric, we can use the case_when statements to decide on the possible results of the kano analysis
#casewhen
#The KANO evaluation tables are from https://foldingburritos.com/kano-model/
library(dplyr)
#For the watering system
SegmentationDataTotal$WATER <- case_when(
      #Functional 1,DISLIKE
      SegmentationDataTotal$KANO_WateringYES==1 &SegmentationDataTotal$KANO_WateringNO==1~"Q",
      SegmentationDataTotal$KANO_WateringYES==1 &SegmentationDataTotal$KANO_WateringNO==2~"R",
      SegmentationDataTotal$KANO_WateringYES==1 &SegmentationDataTotal$KANO_WateringNO==3~"R",
      SegmentationDataTotal$KANO_WateringYES==1 &SegmentationDataTotal$KANO_WateringNO==4~"R",
      SegmentationDataTotal$KANO_WateringYES==1 &SegmentationDataTotal$KANO_WateringNO==5~"R",
      #Funtional 2, CAN LIVE  WITH
      SegmentationDataTotal$KANO_WateringYES==2 &SegmentationDataTotal$KANO_WateringNO==1~"M",
      SegmentationDataTotal$KANO_WateringYES==2 &SegmentationDataTotal$KANO_WateringNO==2~"I",
      SegmentationDataTotal$KANO_WateringYES==2 &SegmentationDataTotal$KANO_WateringNO==3~"I",
      SegmentationDataTotal$KANO_WateringYES==2 &SegmentationDataTotal$KANO_WateringNO==4~"I",
      SegmentationDataTotal$KANO_WateringYES==2 &SegmentationDataTotal$KANO_WateringNO==5~"R",
      #Functional 3(NEUTRAL)
      SegmentationDataTotal$KANO_WateringYES==3 &SegmentationDataTotal$KANO_WateringNO==1~"M",
      SegmentationDataTotal$KANO_WateringYES==3 &SegmentationDataTotal$KANO_WateringNO==2~"I",
      SegmentationDataTotal$KANO_WateringYES==3 &SegmentationDataTotal$KANO_WateringNO==3~"I",
      SegmentationDataTotal$KANO_WateringYES==3 &SegmentationDataTotal$KANO_WateringNO==4~"I",
      SegmentationDataTotal$KANO_WateringYES==3 &SegmentationDataTotal$KANO_WateringNO==5~"R",
      #Functional 4(LIKE)
      SegmentationDataTotal$KANO_WateringYES==4 &SegmentationDataTotal$KANO_WateringNO==1~"M",
      SegmentationDataTotal$KANO_WateringYES==4 &SegmentationDataTotal$KANO_WateringNO==2~"I",
      SegmentationDataTotal$KANO_WateringYES==4 &SegmentationDataTotal$KANO_WateringNO==3~"I",
      SegmentationDataTotal$KANO_WateringYES==4 &SegmentationDataTotal$KANO_WateringNO==4~"I",
      SegmentationDataTotal$KANO_WateringYES==4 &SegmentationDataTotal$KANO_WateringNO==5~"R",
      #Functional 5 (total like)
      SegmentationDataTotal$KANO_WateringYES==5 &SegmentationDataTotal$KANO_WateringNO==1~"P",
      SegmentationDataTotal$KANO_WateringYES==5 &SegmentationDataTotal$KANO_WateringNO==2~"A",
      SegmentationDataTotal$KANO_WateringYES==5 &SegmentationDataTotal$KANO_WateringNO==3~"A",
      SegmentationDataTotal$KANO_WateringYES==5 &SegmentationDataTotal$KANO_WateringNO==4~"A",
      SegmentationDataTotal$KANO_WateringYES==5 &SegmentationDataTotal$KANO_WateringNO==5~"Q"
) 
#Fertilization
SegmentationDataTotal$FERTILIZAZION <- case_when(
      #Functional 1,DISLIKE
      SegmentationDataTotal$KANO_FertilizationYES==1 &SegmentationDataTotal$KANO_FertilizationNO==1~"Q",
      SegmentationDataTotal$KANO_FertilizationYES==1 &SegmentationDataTotal$KANO_FertilizationNO==2~"R",
      SegmentationDataTotal$KANO_FertilizationYES==1 &SegmentationDataTotal$KANO_FertilizationNO==3~"R",
      SegmentationDataTotal$KANO_FertilizationYES==1 &SegmentationDataTotal$KANO_FertilizationNO==4~"R",
      SegmentationDataTotal$KANO_FertilizationYES==1 &SegmentationDataTotal$KANO_FertilizationNO==5~"R",
      #Funtional 2, CAN LIVE  WITH
      SegmentationDataTotal$KANO_FertilizationYES==2 &SegmentationDataTotal$KANO_FertilizationNO==1~"M",
      SegmentationDataTotal$KANO_FertilizationYES==2 &SegmentationDataTotal$KANO_FertilizationNO==2~"I",
      SegmentationDataTotal$KANO_FertilizationYES==2 &SegmentationDataTotal$KANO_FertilizationNO==3~"I",
      SegmentationDataTotal$KANO_FertilizationYES==2 &SegmentationDataTotal$KANO_FertilizationNO==4~"I",
      SegmentationDataTotal$KANO_FertilizationYES==2 &SegmentationDataTotal$KANO_FertilizationNO==5~"R",
      #Functional 3(NEUTRAL)
      SegmentationDataTotal$KANO_FertilizationYES==3 &SegmentationDataTotal$KANO_FertilizationNO==1~"M",
      SegmentationDataTotal$KANO_FertilizationYES==3 &SegmentationDataTotal$KANO_FertilizationNO==2~"I",
      SegmentationDataTotal$KANO_FertilizationYES==3 &SegmentationDataTotal$KANO_FertilizationNO==3~"I",
      SegmentationDataTotal$KANO_FertilizationYES==3 &SegmentationDataTotal$KANO_FertilizationNO==4~"I",
      SegmentationDataTotal$KANO_FertilizationYES==3 &SegmentationDataTotal$KANO_FertilizationNO==5~"R",
      #Functional 4(LIKE)
      SegmentationDataTotal$KANO_FertilizationYES==4 &SegmentationDataTotal$KANO_FertilizationNO==1~"M",
      SegmentationDataTotal$KANO_FertilizationYES==4 &SegmentationDataTotal$KANO_FertilizationNO==2~"I",
      SegmentationDataTotal$KANO_FertilizationYES==4 &SegmentationDataTotal$KANO_FertilizationNO==3~"I",
      SegmentationDataTotal$KANO_FertilizationYES==4 &SegmentationDataTotal$KANO_FertilizationNO==4~"I",
      SegmentationDataTotal$KANO_FertilizationYES==4 &SegmentationDataTotal$KANO_FertilizationNO==5~"R",
      #Functional 5 (total like)
      SegmentationDataTotal$KANO_FertilizationYES==5 &SegmentationDataTotal$KANO_FertilizationNO==1~"P",
      SegmentationDataTotal$KANO_FertilizationYES==5 &SegmentationDataTotal$KANO_FertilizationNO==2~"A",
      SegmentationDataTotal$KANO_FertilizationYES==5 &SegmentationDataTotal$KANO_FertilizationNO==3~"A",
      SegmentationDataTotal$KANO_FertilizationYES==5 &SegmentationDataTotal$KANO_FertilizationNO==4~"A",
      SegmentationDataTotal$KANO_FertilizationYES==5 &SegmentationDataTotal$KANO_FertilizationNO==5~"Q"
)

#Decide on plant
SegmentationDataTotal$DECIDEONPLANT <- case_when(
      #Functional 1,DISLIKE
      SegmentationDataTotal$KANO_DecideOnPlant_YES==1 &SegmentationDataTotal$KANO_DecideOnPlant_NO==1~"Q",
      SegmentationDataTotal$KANO_DecideOnPlant_YES==1 &SegmentationDataTotal$KANO_DecideOnPlant_NO==2~"R",
      SegmentationDataTotal$KANO_DecideOnPlant_YES==1 &SegmentationDataTotal$KANO_DecideOnPlant_NO==3~"R",
      SegmentationDataTotal$KANO_DecideOnPlant_YES==1 &SegmentationDataTotal$KANO_DecideOnPlant_NO==4~"R",
      SegmentationDataTotal$KANO_DecideOnPlant_YES==1 &SegmentationDataTotal$KANO_DecideOnPlant_NO==5~"R",
      #Funtional 2, CAN LIVE  WITH
      SegmentationDataTotal$KANO_DecideOnPlant_YES==2 &SegmentationDataTotal$KANO_DecideOnPlant_NO==1~"M",
      SegmentationDataTotal$KANO_DecideOnPlant_YES==2 &SegmentationDataTotal$KANO_DecideOnPlant_NO==2~"I",
      SegmentationDataTotal$KANO_DecideOnPlant_YES==2 &SegmentationDataTotal$KANO_DecideOnPlant_NO==3~"I",
      SegmentationDataTotal$KANO_DecideOnPlant_YES==2 &SegmentationDataTotal$KANO_DecideOnPlant_NO==4~"I",
      SegmentationDataTotal$KANO_DecideOnPlant_YES==2 &SegmentationDataTotal$KANO_DecideOnPlant_NO==5~"R",
      #Functional 3(NEUTRAL)
      SegmentationDataTotal$KANO_DecideOnPlant_YES==3 &SegmentationDataTotal$KANO_DecideOnPlant_NO==1~"M",
      SegmentationDataTotal$KANO_DecideOnPlant_YES==3 &SegmentationDataTotal$KANO_DecideOnPlant_NO==2~"I",
      SegmentationDataTotal$KANO_DecideOnPlant_YES==3 &SegmentationDataTotal$KANO_DecideOnPlant_NO==3~"I",
      SegmentationDataTotal$KANO_DecideOnPlant_YES==3 &SegmentationDataTotal$KANO_DecideOnPlant_NO==4~"I",
      SegmentationDataTotal$KANO_DecideOnPlant_YES==3 &SegmentationDataTotal$KANO_DecideOnPlant_NO==5~"R",
      #Functional 4(LIKE)
      SegmentationDataTotal$KANO_DecideOnPlant_YES==4 &SegmentationDataTotal$KANO_DecideOnPlant_NO==1~"M",
      SegmentationDataTotal$KANO_DecideOnPlant_YES==4 &SegmentationDataTotal$KANO_DecideOnPlant_NO==2~"I",
      SegmentationDataTotal$KANO_DecideOnPlant_YES==4 &SegmentationDataTotal$KANO_DecideOnPlant_NO==3~"I",
      SegmentationDataTotal$KANO_DecideOnPlant_YES==4 &SegmentationDataTotal$KANO_DecideOnPlant_NO==4~"I",
      SegmentationDataTotal$KANO_DecideOnPlant_YES==4 &SegmentationDataTotal$KANO_DecideOnPlant_NO==5~"R",
      #Functional 5 (total like)
      SegmentationDataTotal$KANO_DecideOnPlant_YES==5 &SegmentationDataTotal$KANO_DecideOnPlant_NO==1~"P",
      SegmentationDataTotal$KANO_DecideOnPlant_YES==5 &SegmentationDataTotal$KANO_DecideOnPlant_NO==2~"A",
      SegmentationDataTotal$KANO_DecideOnPlant_YES==5 &SegmentationDataTotal$KANO_DecideOnPlant_NO==3~"A",
      SegmentationDataTotal$KANO_DecideOnPlant_YES==5 &SegmentationDataTotal$KANO_DecideOnPlant_NO==4~"A",
      SegmentationDataTotal$KANO_DecideOnPlant_YES==5 &SegmentationDataTotal$KANO_DecideOnPlant_NO==5~"Q"
)

#pot size
SegmentationDataTotal$POTSIZE <- case_when(
      #Functional 1,DISLIKE
      SegmentationDataTotal$KANO_PotSize_YES==1 &SegmentationDataTotal$KANO_Potsize_NO==1~"Q",
      SegmentationDataTotal$KANO_PotSize_YES==1 &SegmentationDataTotal$KANO_Potsize_NO==2~"R",
      SegmentationDataTotal$KANO_PotSize_YES==1 &SegmentationDataTotal$KANO_Potsize_NO==3~"R",
      SegmentationDataTotal$KANO_PotSize_YES==1 &SegmentationDataTotal$KANO_Potsize_NO==4~"R",
      SegmentationDataTotal$KANO_PotSize_YES==1 &SegmentationDataTotal$KANO_Potsize_NO==5~"R",
      #Funtional 2, CAN LIVE  WITH
      SegmentationDataTotal$KANO_PotSize_YES==2 &SegmentationDataTotal$KANO_Potsize_NO==1~"M",
      SegmentationDataTotal$KANO_PotSize_YES==2 &SegmentationDataTotal$KANO_Potsize_NO==2~"I",
      SegmentationDataTotal$KANO_PotSize_YES==2 &SegmentationDataTotal$KANO_Potsize_NO==3~"I",
      SegmentationDataTotal$KANO_PotSize_YES==2 &SegmentationDataTotal$KANO_Potsize_NO==4~"I",
      SegmentationDataTotal$KANO_PotSize_YES==2 &SegmentationDataTotal$KANO_Potsize_NO==5~"R",
      #Functional 3(NEUTRAL)
      SegmentationDataTotal$KANO_PotSize_YES==3 &SegmentationDataTotal$KANO_Potsize_NO==1~"M",
      SegmentationDataTotal$KANO_PotSize_YES==3 &SegmentationDataTotal$KANO_Potsize_NO==2~"I",
      SegmentationDataTotal$KANO_PotSize_YES==3 &SegmentationDataTotal$KANO_Potsize_NO==3~"I",
      SegmentationDataTotal$KANO_PotSize_YES==3 &SegmentationDataTotal$KANO_Potsize_NO==4~"I",
      SegmentationDataTotal$KANO_PotSize_YES==3 &SegmentationDataTotal$KANO_Potsize_NO==5~"R",
      #Functional 4(LIKE)
      SegmentationDataTotal$KANO_PotSize_YES==4 &SegmentationDataTotal$KANO_Potsize_NO==1~"M",
      SegmentationDataTotal$KANO_PotSize_YES==4 &SegmentationDataTotal$KANO_Potsize_NO==2~"I",
      SegmentationDataTotal$KANO_PotSize_YES==4 &SegmentationDataTotal$KANO_Potsize_NO==3~"I",
      SegmentationDataTotal$KANO_PotSize_YES==4 &SegmentationDataTotal$KANO_Potsize_NO==4~"I",
      SegmentationDataTotal$KANO_PotSize_YES==4 &SegmentationDataTotal$KANO_Potsize_NO==5~"R",
      #Functional 5 (total like)
      SegmentationDataTotal$KANO_PotSize_YES==5 &SegmentationDataTotal$KANO_Potsize_NO==1~"P",
      SegmentationDataTotal$KANO_PotSize_YES==5 &SegmentationDataTotal$KANO_Potsize_NO==2~"A",
      SegmentationDataTotal$KANO_PotSize_YES==5 &SegmentationDataTotal$KANO_Potsize_NO==3~"A",
      SegmentationDataTotal$KANO_PotSize_YES==5 &SegmentationDataTotal$KANO_Potsize_NO==4~"A",
      SegmentationDataTotal$KANO_PotSize_YES==5 &SegmentationDataTotal$KANO_Potsize_NO==5~"Q"
)
#Recycled material

SegmentationDataTotal$RECYCLED <- case_when(
      #Functional 1,DISLIKE
      SegmentationDataTotal$KANO_RecycledMaterial_YES==1 &SegmentationDataTotal$KANO_RecycledMaterial_NO==1~"Q",
      SegmentationDataTotal$KANO_RecycledMaterial_YES==1 &SegmentationDataTotal$KANO_RecycledMaterial_NO==2~"R",
      SegmentationDataTotal$KANO_RecycledMaterial_YES==1 &SegmentationDataTotal$KANO_RecycledMaterial_NO==3~"R",
      SegmentationDataTotal$KANO_RecycledMaterial_YES==1 &SegmentationDataTotal$KANO_RecycledMaterial_NO==4~"R",
      SegmentationDataTotal$KANO_RecycledMaterial_YES==1 &SegmentationDataTotal$KANO_RecycledMaterial_NO==5~"R",
      #Funtional 2, CAN LIVE  WITH
      SegmentationDataTotal$KANO_RecycledMaterial_YES==2 &SegmentationDataTotal$KANO_RecycledMaterial_NO==1~"M",
      SegmentationDataTotal$KANO_RecycledMaterial_YES==2 &SegmentationDataTotal$KANO_RecycledMaterial_NO==2~"I",
      SegmentationDataTotal$KANO_RecycledMaterial_YES==2 &SegmentationDataTotal$KANO_RecycledMaterial_NO==3~"I",
      SegmentationDataTotal$KANO_RecycledMaterial_YES==2 &SegmentationDataTotal$KANO_RecycledMaterial_NO==4~"I",
      SegmentationDataTotal$KANO_RecycledMaterial_YES==2 &SegmentationDataTotal$KANO_RecycledMaterial_NO==5~"R",
      #Functional 3(NEUTRAL)
      SegmentationDataTotal$KANO_RecycledMaterial_YES==3 &SegmentationDataTotal$KANO_RecycledMaterial_NO==1~"M",
      SegmentationDataTotal$KANO_RecycledMaterial_YES==3 &SegmentationDataTotal$KANO_RecycledMaterial_NO==2~"I",
      SegmentationDataTotal$KANO_RecycledMaterial_YES==3 &SegmentationDataTotal$KANO_RecycledMaterial_NO==3~"I",
      SegmentationDataTotal$KANO_RecycledMaterial_YES==3 &SegmentationDataTotal$KANO_RecycledMaterial_NO==4~"I",
      SegmentationDataTotal$KANO_RecycledMaterial_YES==3 &SegmentationDataTotal$KANO_RecycledMaterial_NO==5~"R",
      #Functional 4(LIKE)
      SegmentationDataTotal$KANO_RecycledMaterial_YES==4 &SegmentationDataTotal$KANO_RecycledMaterial_NO==1~"M",
      SegmentationDataTotal$KANO_RecycledMaterial_YES==4 &SegmentationDataTotal$KANO_RecycledMaterial_NO==2~"I",
      SegmentationDataTotal$KANO_RecycledMaterial_YES==4 &SegmentationDataTotal$KANO_RecycledMaterial_NO==3~"I",
      SegmentationDataTotal$KANO_RecycledMaterial_YES==4 &SegmentationDataTotal$KANO_RecycledMaterial_NO==4~"I",
      SegmentationDataTotal$KANO_RecycledMaterial_YES==4 &SegmentationDataTotal$KANO_RecycledMaterial_NO==5~"R",
      #Functional 5 (total like)
      SegmentationDataTotal$KANO_RecycledMaterial_YES==5 &SegmentationDataTotal$KANO_RecycledMaterial_NO==1~"P",
      SegmentationDataTotal$KANO_RecycledMaterial_YES==5 &SegmentationDataTotal$KANO_RecycledMaterial_NO==2~"A",
      SegmentationDataTotal$KANO_RecycledMaterial_YES==5 &SegmentationDataTotal$KANO_RecycledMaterial_NO==3~"A",
      SegmentationDataTotal$KANO_RecycledMaterial_YES==5 &SegmentationDataTotal$KANO_RecycledMaterial_NO==4~"A",
      SegmentationDataTotal$KANO_RecycledMaterial_YES==5 &SegmentationDataTotal$KANO_RecycledMaterial_NO==5~"Q"
)

#difficulty
SegmentationDataTotal$DIFFICULTY <- case_when(
      #Functional 1,DISLIKE
      SegmentationDataTotal$KANO_SetDifficulty_YES==1 &SegmentationDataTotal$KANO_SetDifficulty_NO==1~"Q",
      SegmentationDataTotal$KANO_SetDifficulty_YES==1 &SegmentationDataTotal$KANO_SetDifficulty_NO==2~"R",
      SegmentationDataTotal$KANO_SetDifficulty_YES==1 &SegmentationDataTotal$KANO_SetDifficulty_NO==3~"R",
      SegmentationDataTotal$KANO_SetDifficulty_YES==1 &SegmentationDataTotal$KANO_SetDifficulty_NO==4~"R",
      SegmentationDataTotal$KANO_SetDifficulty_YES==1 &SegmentationDataTotal$KANO_SetDifficulty_NO==5~"R",
      #Funtional 2, CAN LIVE  WITH
      SegmentationDataTotal$KANO_SetDifficulty_YES==2 &SegmentationDataTotal$KANO_SetDifficulty_NO==1~"M",
      SegmentationDataTotal$KANO_SetDifficulty_YES==2 &SegmentationDataTotal$KANO_SetDifficulty_NO==2~"I",
      SegmentationDataTotal$KANO_SetDifficulty_YES==2 &SegmentationDataTotal$KANO_SetDifficulty_NO==3~"I",
      SegmentationDataTotal$KANO_SetDifficulty_YES==2 &SegmentationDataTotal$KANO_SetDifficulty_NO==4~"I",
      SegmentationDataTotal$KANO_SetDifficulty_YES==2 &SegmentationDataTotal$KANO_SetDifficulty_NO==5~"R",
      #Functional 3(NEUTRAL)
      SegmentationDataTotal$KANO_SetDifficulty_YES==3 &SegmentationDataTotal$KANO_SetDifficulty_NO==1~"M",
      SegmentationDataTotal$KANO_SetDifficulty_YES==3 &SegmentationDataTotal$KANO_SetDifficulty_NO==2~"I",
      SegmentationDataTotal$KANO_SetDifficulty_YES==3 &SegmentationDataTotal$KANO_SetDifficulty_NO==3~"I",
      SegmentationDataTotal$KANO_SetDifficulty_YES==3 &SegmentationDataTotal$KANO_SetDifficulty_NO==4~"I",
      SegmentationDataTotal$KANO_SetDifficulty_YES==3 &SegmentationDataTotal$KANO_SetDifficulty_NO==5~"R",
      #Functional 4(LIKE)
      SegmentationDataTotal$KANO_SetDifficulty_YES==4 &SegmentationDataTotal$KANO_SetDifficulty_NO==1~"M",
      SegmentationDataTotal$KANO_SetDifficulty_YES==4 &SegmentationDataTotal$KANO_SetDifficulty_NO==2~"I",
      SegmentationDataTotal$KANO_SetDifficulty_YES==4 &SegmentationDataTotal$KANO_SetDifficulty_NO==3~"I",
      SegmentationDataTotal$KANO_SetDifficulty_YES==4 &SegmentationDataTotal$KANO_SetDifficulty_NO==4~"I",
      SegmentationDataTotal$KANO_SetDifficulty_YES==4 &SegmentationDataTotal$KANO_SetDifficulty_NO==5~"R",
      #Functional 5 (total like)
      SegmentationDataTotal$KANO_SetDifficulty_YES==5 &SegmentationDataTotal$KANO_SetDifficulty_NO==1~"P",
      SegmentationDataTotal$KANO_SetDifficulty_YES==5 &SegmentationDataTotal$KANO_SetDifficulty_NO==2~"A",
      SegmentationDataTotal$KANO_SetDifficulty_YES==5 &SegmentationDataTotal$KANO_SetDifficulty_NO==3~"A",
      SegmentationDataTotal$KANO_SetDifficulty_YES==5 &SegmentationDataTotal$KANO_SetDifficulty_NO==4~"A",
      SegmentationDataTotal$KANO_SetDifficulty_YES==5 &SegmentationDataTotal$KANO_SetDifficulty_NO==5~"Q"
)

#plant  immortal
SegmentationDataTotal$PLANTIMMORTAL <- case_when(
      #Functional 1,DISLIKE
      SegmentationDataTotal$KANO_PlantImmortal_YES==1 &SegmentationDataTotal$KANO_PlantImmortal_NO==1~"Q",
      SegmentationDataTotal$KANO_PlantImmortal_YES==1 &SegmentationDataTotal$KANO_PlantImmortal_NO==2~"R",
      SegmentationDataTotal$KANO_PlantImmortal_YES==1 &SegmentationDataTotal$KANO_PlantImmortal_NO==3~"R",
      SegmentationDataTotal$KANO_PlantImmortal_YES==1 &SegmentationDataTotal$KANO_PlantImmortal_NO==4~"R",
      SegmentationDataTotal$KANO_PlantImmortal_YES==1 &SegmentationDataTotal$KANO_PlantImmortal_NO==5~"R",
      #Funtional 2, CAN LIVE  WITH
      SegmentationDataTotal$KANO_PlantImmortal_YES==2 &SegmentationDataTotal$KANO_PlantImmortal_NO==1~"M",
      SegmentationDataTotal$KANO_PlantImmortal_YES==2 &SegmentationDataTotal$KANO_PlantImmortal_NO==2~"I",
      SegmentationDataTotal$KANO_PlantImmortal_YES==2 &SegmentationDataTotal$KANO_PlantImmortal_NO==3~"I",
      SegmentationDataTotal$KANO_PlantImmortal_YES==2 &SegmentationDataTotal$KANO_PlantImmortal_NO==4~"I",
      SegmentationDataTotal$KANO_PlantImmortal_YES==2 &SegmentationDataTotal$KANO_PlantImmortal_NO==5~"R",
      #Functional 3(NEUTRAL)
      SegmentationDataTotal$KANO_PlantImmortal_YES==3 &SegmentationDataTotal$KANO_PlantImmortal_NO==1~"M",
      SegmentationDataTotal$KANO_PlantImmortal_YES==3 &SegmentationDataTotal$KANO_PlantImmortal_NO==2~"I",
      SegmentationDataTotal$KANO_PlantImmortal_YES==3 &SegmentationDataTotal$KANO_PlantImmortal_NO==3~"I",
      SegmentationDataTotal$KANO_PlantImmortal_YES==3 &SegmentationDataTotal$KANO_PlantImmortal_NO==4~"I",
      SegmentationDataTotal$KANO_PlantImmortal_YES==3 &SegmentationDataTotal$KANO_PlantImmortal_NO==5~"R",
      #Functional 4(LIKE)
      SegmentationDataTotal$KANO_PlantImmortal_YES==4 &SegmentationDataTotal$KANO_PlantImmortal_NO==1~"M",
      SegmentationDataTotal$KANO_PlantImmortal_YES==4 &SegmentationDataTotal$KANO_PlantImmortal_NO==2~"I",
      SegmentationDataTotal$KANO_PlantImmortal_YES==4 &SegmentationDataTotal$KANO_PlantImmortal_NO==3~"I",
      SegmentationDataTotal$KANO_PlantImmortal_YES==4 &SegmentationDataTotal$KANO_PlantImmortal_NO==4~"I",
      SegmentationDataTotal$KANO_PlantImmortal_YES==4 &SegmentationDataTotal$KANO_PlantImmortal_NO==5~"R",
      #Functional 5 (total like)
      SegmentationDataTotal$KANO_PlantImmortal_YES==5 &SegmentationDataTotal$KANO_PlantImmortal_NO==1~"P",
      SegmentationDataTotal$KANO_PlantImmortal_YES==5 &SegmentationDataTotal$KANO_PlantImmortal_NO==2~"A",
      SegmentationDataTotal$KANO_PlantImmortal_YES==5 &SegmentationDataTotal$KANO_PlantImmortal_NO==3~"A",
      SegmentationDataTotal$KANO_PlantImmortal_YES==5 &SegmentationDataTotal$KANO_PlantImmortal_NO==4~"A",
      SegmentationDataTotal$KANO_PlantImmortal_YES==5 &SegmentationDataTotal$KANO_PlantImmortal_NO==5~"Q"
)

#Set skins

SegmentationDataTotal$SETSKINS <- case_when(
      #Functional 1,DISLIKE
      SegmentationDataTotal$KANO_SetSkins_YES==1 &SegmentationDataTotal$KANO_SetSkins_NO==1~"Q",
      SegmentationDataTotal$KANO_SetSkins_YES==1 &SegmentationDataTotal$KANO_SetSkins_NO==2~"R",
      SegmentationDataTotal$KANO_SetSkins_YES==1 &SegmentationDataTotal$KANO_SetSkins_NO==3~"R",
      SegmentationDataTotal$KANO_SetSkins_YES==1 &SegmentationDataTotal$KANO_SetSkins_NO==4~"R",
      SegmentationDataTotal$KANO_SetSkins_YES==1 &SegmentationDataTotal$KANO_SetSkins_NO==5~"R",
      #Funtional 2, CAN LIVE  WITH
      SegmentationDataTotal$KANO_SetSkins_YES==2 &SegmentationDataTotal$KANO_SetSkins_NO==1~"M",
      SegmentationDataTotal$KANO_SetSkins_YES==2 &SegmentationDataTotal$KANO_SetSkins_NO==2~"I",
      SegmentationDataTotal$KANO_SetSkins_YES==2 &SegmentationDataTotal$KANO_SetSkins_NO==3~"I",
      SegmentationDataTotal$KANO_SetSkins_YES==2 &SegmentationDataTotal$KANO_SetSkins_NO==4~"I",
      SegmentationDataTotal$KANO_SetSkins_YES==2 &SegmentationDataTotal$KANO_SetSkins_NO==5~"R",
      #Functional 3(NEUTRAL)
      SegmentationDataTotal$KANO_SetSkins_YES==3 &SegmentationDataTotal$KANO_SetSkins_NO==1~"M",
      SegmentationDataTotal$KANO_SetSkins_YES==3 &SegmentationDataTotal$KANO_SetSkins_NO==2~"I",
      SegmentationDataTotal$KANO_SetSkins_YES==3 &SegmentationDataTotal$KANO_SetSkins_NO==3~"I",
      SegmentationDataTotal$KANO_SetSkins_YES==3 &SegmentationDataTotal$KANO_SetSkins_NO==4~"I",
      SegmentationDataTotal$KANO_SetSkins_YES==3 &SegmentationDataTotal$KANO_SetSkins_NO==5~"R",
      #Functional 4(LIKE)
      SegmentationDataTotal$KANO_SetSkins_YES==4 &SegmentationDataTotal$KANO_SetSkins_NO==1~"M",
      SegmentationDataTotal$KANO_SetSkins_YES==4 &SegmentationDataTotal$KANO_SetSkins_NO==2~"I",
      SegmentationDataTotal$KANO_SetSkins_YES==4 &SegmentationDataTotal$KANO_SetSkins_NO==3~"I",
      SegmentationDataTotal$KANO_SetSkins_YES==4 &SegmentationDataTotal$KANO_SetSkins_NO==4~"I",
      SegmentationDataTotal$KANO_SetSkins_YES==4 &SegmentationDataTotal$KANO_SetSkins_NO==5~"R",
      #Functional 5 (total like)
      SegmentationDataTotal$KANO_SetSkins_YES==5 &SegmentationDataTotal$KANO_SetSkins_NO==1~"P",
      SegmentationDataTotal$KANO_SetSkins_YES==5 &SegmentationDataTotal$KANO_SetSkins_NO==2~"A",
      SegmentationDataTotal$KANO_SetSkins_YES==5 &SegmentationDataTotal$KANO_SetSkins_NO==3~"A",
      SegmentationDataTotal$KANO_SetSkins_YES==5 &SegmentationDataTotal$KANO_SetSkins_NO==4~"A",
      SegmentationDataTotal$KANO_SetSkins_YES==5 &SegmentationDataTotal$KANO_SetSkins_NO==5~"Q"
)
#segmentation
library(cluster)
##########
##We now remove the columns used for creating the KANO method
#From 40 to 47 are the locations of the kano  variables to be used in segmentation
SegmentationDataTotal <- SegmentationDataTotal[,-(16:31)]

##We need to firstly subset the data for the other part of the survey
#We create two datasets: the segmentation and the specific
Segmentation <- subset(SegmentationDataTotal, HowOftenPottedFlowers !="Never")
Specific <- subset(SegmentationDataTotal, HowOftenPottedFlowers=="Never")
#Afterwards we need to remove the variables specific for each dataset
names(Segmentation)
#The specific dataset contains all the data from columns 1 through 15
Specific <- Specific[,(1:15)]
names(Specific)
#The segmentation dataset contains all the data except the columns from 10 till 15
Segmentation <- Segmentation[,c(1:9,16:47)]
names(Segmentation)


##Segmentation dataset only!!!
#We create a new dataframe called s which will contain only the variables for the segmentation. This is so it will be easier and quicker to complete the necessary transformations
s <- Segmentation[,34:41]
s$WATER <- factor(s$WATER)
s$FERTILIZAZION <- factor(s$FERTILIZAZION)
s$DECIDEONPLANT <- factor(s$DECIDEONPLANT)
s$POTSIZE <- factor(s$POTSIZE)
s$RECYCLED <- factor(s$RECYCLED)
s$DIFFICULTY <- factor(s$DIFFICULTY)
s$PLANTIMMORTAL <- factor(s$PLANTIMMORTAL)
s$SETSKINS <- factor(s$SETSKINS)

#Now we copy the code from before
#####
#We start with calculating the gower distance  
gower_distKANO <- daisy(s,
                             metric = "gower",
                             type = list(logratio = 3))

gower_matKANO <- as.matrix(gower_distKANO)
#Now we are going to do a sanity check. The two pieces of code below show the most simmilar and the most dissimilar observations with the most simmilar being first. 

s[
      which(gower_matKANO == min(gower_matKANO[gower_matKANO != min(gower_matKANO)]),
            arr.ind = TRUE)[1, ], ]

s[
      which(gower_matKANO == max(gower_matKANO[gower_matKANO != max(gower_matKANO)]),
            arr.ind = TRUE)[1, ], ]

#the test we use to determine the number of clusters is called silhuete width.

sil_width <- c(NA)
for(i in 2:10){
      
      pam_fit <- pam(gower_distKANO,
                     diss = TRUE,
                     k = i)
      
      sil_width[i] <- pam_fit$silinfo$avg.width
      
}
plot(1:10, sil_width,
     xlab = "Number of clusters",
     ylab = "Silhouette Width")
lines(1:10, sil_width)
#the graph shows that the ideal number of clusters is four
#!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
#DO NOT FORGET TO CHANGE THIS. THE NUMBER COULD CHANGE WITH NEW OBSERVATIONS
pam_fit <- pam(gower_distKANO, diss = TRUE, k = 3)
Segmentation$Cluster <- pam_fit$clustering
pam_fit$medoids
summary(pam_fit)
##!!!!Do not be scared of the medoids number, when we subset it before, the numbers of observations were changed, meaning that the index is from the original dataset
summary(as.factor(Segmentation$Cluster))
Segmentation[49,]
Segmentation[9,]
Segmentation[30,]
#Now we are going to test how well the demographic variables predict the segments
summary(subset(Segmentation, Segmentation$Cluster==2))
summary(Segmentation)
subset(Segmentation[,1:10], Segmentation$Cluster==2)
subset(Segmentation[,1:10], Segmentation$Cluster!=2)
names(Segmentation)
segPrediction <- lm(Cluster~Age+Gender+MaritalStatus+Education+Employment+HouseholdIncome, data = Segmentation)
summary(segPrediction)
#the issue here is that I really do not have enough observations to predict the variables needed. Basically, everything is not significant.
#With 53 observations I still get nothing. It seems that gender and age are the closest to guessing the segment but I can not find any of the details.


#Getting the conjoint data into the tables
#The data on which features are actually in the analysis is in the name of the variable. So we need to transform the data using a string processor. Basically, because it is divided by underscores we need to use that as a division and populate the table
#The code below is used to get the names of the varirables out, divide it by underscores and create a dataframe containing those
x <- names(Segmentation[,10:33])
Option1 <- strsplit(x,"_")
y <- Option1[[1]]
y <- as.data.frame(y)
y <- t(y)
test <- as.data.frame(lapply(y,rep, nrow(Segmentation)))

