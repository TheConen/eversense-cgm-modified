.class public Lcom/senseonics/util/AlertHelper;
.super Ljava/lang/Object;
.source "AlertHelper.java"


# instance fields
.field private context:Landroid/content/Context;

.field private model:Lcom/senseonics/model/TransmitterStateModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/senseonics/model/TransmitterStateModel;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/senseonics/util/AlertHelper;->context:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/senseonics/util/AlertHelper;->model:Lcom/senseonics/model/TransmitterStateModel;

    return-void
.end method

.method static getDescriptionIDForHighGlucoseAlarm()I
    .locals 1

    .line 372
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->enableDosing()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f110146

    return v0

    :cond_0
    const v0, 0x7f110145

    return v0
.end method

.method static getDescriptionIDForLowGlucoseAlarm()I
    .locals 1

    .line 364
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->enableDosing()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f11018f

    return v0

    :cond_0
    const v0, 0x7f11018e

    return v0
.end method

.method static getDescriptionIDForPredictiveHighAlarm()I
    .locals 1

    .line 388
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->enableDosing()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f110224

    return v0

    :cond_0
    const v0, 0x7f110223

    return v0
.end method

.method static getDescriptionIDForPredictiveLowAlarm()I
    .locals 1

    .line 380
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->enableDosing()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f110228

    return v0

    :cond_0
    const v0, 0x7f110227

    return v0
.end method

.method static getDescriptionIDForRateFallingAlarm(Lcom/senseonics/util/Utils$GLUCOSE_UNIT;)I
    .locals 1

    .line 396
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->enableDosing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 397
    sget-object v0, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MG_DL:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    if-ne p0, v0, :cond_0

    const p0, 0x7f110238

    goto :goto_0

    :cond_0
    const p0, 0x7f11023b

    :goto_0
    return p0

    .line 401
    :cond_1
    sget-object v0, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MG_DL:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    if-ne p0, v0, :cond_2

    const p0, 0x7f110237

    goto :goto_1

    :cond_2
    const p0, 0x7f11023a

    :goto_1
    return p0
.end method

.method static getDescriptionIDForRateRisingAlarm(Lcom/senseonics/util/Utils$GLUCOSE_UNIT;)I
    .locals 1

    .line 408
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->enableDosing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 409
    sget-object v0, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MG_DL:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    if-ne p0, v0, :cond_0

    const p0, 0x7f110240

    goto :goto_0

    :cond_0
    const p0, 0x7f110243

    :goto_0
    return p0

    .line 413
    :cond_1
    sget-object v0, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MG_DL:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    if-ne p0, v0, :cond_2

    const p0, 0x7f11023f

    goto :goto_1

    :cond_2
    const p0, 0x7f110242

    :goto_1
    return p0
.end method

.method public static getHelpString(Landroid/content/Context;Lcom/senseonics/util/TransmitterMessageCode;Lcom/senseonics/model/TransmitterStateModel;)Ljava/lang/String;
    .locals 4

    .line 237
    invoke-virtual {p1}, Lcom/senseonics/util/TransmitterMessageCode;->getHelp()I

    move-result v0

    .line 239
    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->SensorRetiredAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-eq p1, v1, :cond_11

    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->MEPAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p1, v1, :cond_0

    goto/16 :goto_1

    .line 245
    :cond_0
    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->SensorPrematureReplacementAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p1, v1, :cond_2

    .line 246
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->updateToHcp()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f110280

    goto/16 :goto_2

    :cond_1
    const v0, 0x7f11027f

    goto/16 :goto_2

    .line 251
    :cond_2
    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->SensorRetiringSoon1Alarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-eq p1, v1, :cond_f

    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->SensorRetiringSoon2Alarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-eq p1, v1, :cond_f

    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->SensorRetiringSoon3Alarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-eq p1, v1, :cond_f

    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->SensorRetiringSoon4Alarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-eq p1, v1, :cond_f

    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->SensorRetiringSoon5Alarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-eq p1, v1, :cond_f

    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->SensorRetiringSoon6Alarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p1, v1, :cond_3

    goto/16 :goto_0

    .line 262
    :cond_3
    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->SensorAgedOutAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p1, v1, :cond_5

    .line 263
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->updateToHcp()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f110294

    goto/16 :goto_2

    :cond_4
    const v0, 0x7f110293

    goto/16 :goto_2

    .line 268
    :cond_5
    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->EDRAlarm0:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p1, v1, :cond_7

    .line 269
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->updateToHcp()Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x7f110296

    goto/16 :goto_2

    :cond_6
    const v0, 0x7f110295

    goto/16 :goto_2

    .line 274
    :cond_7
    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->EDRAlarm1:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p1, v1, :cond_9

    .line 275
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->updateToHcp()Z

    move-result v0

    if-eqz v0, :cond_8

    const v0, 0x7f110298

    goto :goto_2

    :cond_8
    const v0, 0x7f110297

    goto :goto_2

    .line 280
    :cond_9
    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->EDRAlarm2:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p1, v1, :cond_b

    .line 281
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->updateToHcp()Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f11029a

    goto :goto_2

    :cond_a
    const v0, 0x7f110299

    goto :goto_2

    .line 286
    :cond_b
    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->EDRAlarm3:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p1, v1, :cond_d

    .line 287
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->updateToHcp()Z

    move-result v0

    if-eqz v0, :cond_c

    const v0, 0x7f11029c

    goto :goto_2

    :cond_c
    const v0, 0x7f11029b

    goto :goto_2

    .line 292
    :cond_d
    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->EDRAlarm4:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p1, v1, :cond_13

    .line 293
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->updateToHcp()Z

    move-result v0

    if-eqz v0, :cond_e

    const v0, 0x7f1100c0

    goto :goto_2

    :cond_e
    const v0, 0x7f1100bf

    goto :goto_2

    .line 257
    :cond_f
    :goto_0
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->updateToHcp()Z

    move-result v0

    if-eqz v0, :cond_10

    const v0, 0x7f110284

    goto :goto_2

    :cond_10
    const v0, 0x7f110283

    goto :goto_2

    .line 240
    :cond_11
    :goto_1
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->updateToHcp()Z

    move-result v0

    if-eqz v0, :cond_12

    const v0, 0x7f110279

    goto :goto_2

    :cond_12
    const v0, 0x7f110278

    :cond_13
    :goto_2
    const-string v1, ""

    if-lez v0, :cond_1d

    .line 303
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterName()Ljava/lang/String;

    move-result-object v2

    .line 302
    invoke-static {v0, v2, p0}, Lcom/senseonics/util/Utils;->replaceTransmitterNameFromString(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 306
    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->SeriouslyHighAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    const/4 v3, 0x0

    if-ne p1, v2, :cond_14

    .line 307
    sget v2, Lcom/senseonics/util/Utils;->GLUCOSE_VALID_MAX:I

    goto :goto_3

    .line 308
    :cond_14
    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->SeriouslyLowAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p1, v2, :cond_15

    .line 309
    sget v2, Lcom/senseonics/util/Utils;->GLUCOSE_VALID_MIN:I

    goto :goto_3

    .line 310
    :cond_15
    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->HighGlucoseAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p1, v2, :cond_16

    .line 311
    invoke-virtual {p2}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseAlarmThreshold()I

    move-result v2

    goto :goto_3

    .line 312
    :cond_16
    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->LowGlucoseAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p1, v2, :cond_17

    .line 313
    invoke-virtual {p2}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseAlarmThreshold()I

    move-result v2

    goto :goto_3

    .line 314
    :cond_17
    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->HighGlucoseAlert:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p1, v2, :cond_18

    .line 315
    invoke-virtual {p2}, Lcom/senseonics/model/TransmitterStateModel;->getHighGlucoseAlertThreshold()I

    move-result v2

    goto :goto_3

    .line 316
    :cond_18
    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->LowGlucoseAlert:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p1, v2, :cond_19

    .line 317
    invoke-virtual {p2}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseAlertThreshold()I

    move-result v2

    goto :goto_3

    :cond_19
    move v2, v3

    .line 321
    :goto_3
    invoke-static {p0, v2}, Lcom/senseonics/util/Utils;->getGlucoseLevelString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    const-string v2, "%value%"

    .line 320
    invoke-virtual {v0, v2, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->PredictiveLowAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p1, v2, :cond_1a

    invoke-virtual {p2}, Lcom/senseonics/model/TransmitterStateModel;->getPredictiveFallingRateAlertMinuteInterval()I

    move-result v2

    goto :goto_4

    :cond_1a
    invoke-virtual {p2}, Lcom/senseonics/model/TransmitterStateModel;->getPredictiveRisingRateAlertMinuteInterval()I

    move-result v2

    :goto_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "%predictiveMins%"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 326
    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode;->RateFallingAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p1, v0, :cond_1b

    invoke-virtual {p2}, Lcom/senseonics/model/TransmitterStateModel;->getRateAlertFallingThreshold()F

    move-result p1

    goto :goto_5

    :cond_1b
    invoke-virtual {p2}, Lcom/senseonics/model/TransmitterStateModel;->getRateAlertRisingThreshold()F

    move-result p1

    .line 327
    :goto_5
    sget-object p2, Lcom/senseonics/util/Utils;->currentGlucoseUnit:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    sget-object v0, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MG_DL:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne p2, v0, :cond_1c

    .line 328
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v0, v3

    const-string p1, "mg/dL/min"

    aput-object p1, v0, v1

    const-string p1, "%.1f %s"

    invoke-static {p2, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    .line 330
    :cond_1c
    invoke-static {p1}, Lcom/senseonics/util/Convert;->MLConvertMgToMmol(F)F

    move-result p1

    .line 331
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v0, v3

    const-string p1, "mmol/L/min"

    aput-object p1, v0, v1

    const-string p1, "%.2f %s"

    invoke-static {p2, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_6
    const-string p2, "%rate%"

    .line 334
    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :cond_1d
    return-object v1
.end method


# virtual methods
.method public calculateDaysSinceInsertion(JJ)I
    .locals 0

    sub-long/2addr p3, p1

    long-to-double p1, p3

    const-wide p3, 0x408f400000000000L    # 1000.0

    div-double/2addr p1, p3

    const-wide/high16 p3, 0x404e000000000000L    # 60.0

    div-double/2addr p1, p3

    div-double/2addr p1, p3

    const-wide/high16 p3, 0x4038000000000000L    # 24.0

    div-double/2addr p1, p3

    double-to-int p1, p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1
.end method

.method public getNotificationMessageText(Lcom/senseonics/util/TransmitterMessageCode;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 62
    invoke-virtual {p1}, Lcom/senseonics/util/TransmitterMessageCode;->getMessage()I

    move-result v0

    .line 65
    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->SeriouslyLowAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v1, :cond_0

    .line 66
    iget-object p1, p0, Lcom/senseonics/util/AlertHelper;->context:Landroid/content/Context;

    new-array p3, v3, [Ljava/lang/Object;

    sget p4, Lcom/senseonics/util/Utils;->GLUCOSE_VALID_MIN:I

    invoke-static {p1, p4}, Lcom/senseonics/util/Utils;->getGlucoseLevelString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p4

    aput-object p4, p3, v2

    invoke-virtual {p1, v0, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    .line 67
    :cond_0
    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->SeriouslyHighAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p1, v1, :cond_1

    .line 68
    iget-object p1, p0, Lcom/senseonics/util/AlertHelper;->context:Landroid/content/Context;

    new-array p3, v3, [Ljava/lang/Object;

    sget p4, Lcom/senseonics/util/Utils;->GLUCOSE_VALID_MAX:I

    invoke-static {p1, p4}, Lcom/senseonics/util/Utils;->getGlucoseLevelString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p4

    aput-object p4, p3, v2

    invoke-virtual {p1, v0, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    .line 69
    :cond_1
    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->CalibrationFailedAlert:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p1, v1, :cond_2

    .line 70
    iget-object p1, p0, Lcom/senseonics/util/AlertHelper;->context:Landroid/content/Context;

    new-array p3, v3, [Ljava/lang/Object;

    iget-object p4, p0, Lcom/senseonics/util/AlertHelper;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p4}, Lcom/senseonics/model/TransmitterStateModel;->getCalibrationDurationMinutes()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, v2

    invoke-virtual {p1, v0, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    .line 71
    :cond_2
    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->TransmitterEOL366:Lcom/senseonics/util/TransmitterMessageCode;

    if-eq p1, v1, :cond_36

    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->TransmitterEOL330:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p1, v1, :cond_3

    goto/16 :goto_3

    .line 82
    :cond_3
    sget-object v1, Lcom/senseonics/util/TransmitterMessageCode;->CalibrationExpiredAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    const/16 v4, 0x18

    if-ne p1, v1, :cond_6

    iget-object v1, p0, Lcom/senseonics/util/AlertHelper;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getIsOneCalPhaseRegisterExists()Z

    move-result v1

    invoke-static {v1}, Lcom/senseonics/util/AccountConfigurations;->enableOneCalSwitch(Z)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 83
    invoke-static {p5}, Lcom/senseonics/util/Utils;->getCalModeFromCalAlertNote(Ljava/lang/String;)I

    move-result p1

    .line 84
    invoke-static {p5}, Lcom/senseonics/util/Utils;->getCalPhaseFromCalAlertNote(Ljava/lang/String;)I

    move-result p3

    .line 86
    sget-object p4, Lcom/senseonics/util/Utils$CAL_PHASE;->SUSPICIOUS:Lcom/senseonics/util/Utils$CAL_PHASE;

    invoke-virtual {p4}, Lcom/senseonics/util/Utils$CAL_PHASE;->ordinal()I

    move-result p4

    const p5, 0x7f11006f

    if-ne p3, p4, :cond_4

    .line 88
    iget-object p1, p0, Lcom/senseonics/util/AlertHelper;->context:Landroid/content/Context;

    new-array p3, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, v2

    invoke-virtual {p1, p5, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    .line 91
    :cond_4
    iget-object p3, p0, Lcom/senseonics/util/AlertHelper;->context:Landroid/content/Context;

    new-array p4, v3, [Ljava/lang/Object;

    if-ne p1, v3, :cond_5

    const/16 v4, 0x28

    :cond_5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p4, v2

    invoke-virtual {p3, p5, p4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    .line 93
    :cond_6
    sget-object p5, Lcom/senseonics/util/TransmitterMessageCode;->OneCal:Lcom/senseonics/util/TransmitterMessageCode;

    const/16 v1, 0xb

    if-eq p1, p5, :cond_34

    sget-object p5, Lcom/senseonics/util/TransmitterMessageCode;->TwoCal:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p1, p5, :cond_7

    goto/16 :goto_1

    .line 99
    :cond_7
    sget-object p5, Lcom/senseonics/util/TransmitterMessageCode;->SensorAwolAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p1, p5, :cond_8

    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->showNoSensorDetectedPopup()Z

    move-result p5

    if-nez p5, :cond_8

    .line 101
    iget-object p1, p0, Lcom/senseonics/util/AlertHelper;->context:Landroid/content/Context;

    const p3, 0x7f1101e9

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    .line 102
    :cond_8
    sget-object p5, Lcom/senseonics/util/TransmitterMessageCode;->LowGlucoseAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p1, p5, :cond_9

    .line 103
    iget-object p1, p0, Lcom/senseonics/util/AlertHelper;->context:Landroid/content/Context;

    invoke-static {}, Lcom/senseonics/util/AlertHelper;->getDescriptionIDForLowGlucoseAlarm()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    .line 104
    :cond_9
    sget-object p5, Lcom/senseonics/util/TransmitterMessageCode;->HighGlucoseAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p1, p5, :cond_a

    .line 105
    iget-object p1, p0, Lcom/senseonics/util/AlertHelper;->context:Landroid/content/Context;

    invoke-static {}, Lcom/senseonics/util/AlertHelper;->getDescriptionIDForHighGlucoseAlarm()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    .line 106
    :cond_a
    sget-object p5, Lcom/senseonics/util/TransmitterMessageCode;->PredictiveLowAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p1, p5, :cond_b

    .line 107
    iget-object p1, p0, Lcom/senseonics/util/AlertHelper;->context:Landroid/content/Context;

    invoke-static {}, Lcom/senseonics/util/AlertHelper;->getDescriptionIDForPredictiveLowAlarm()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    .line 108
    :cond_b
    sget-object p5, Lcom/senseonics/util/TransmitterMessageCode;->PredictiveHighAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p1, p5, :cond_c

    .line 109
    iget-object p1, p0, Lcom/senseonics/util/AlertHelper;->context:Landroid/content/Context;

    invoke-static {}, Lcom/senseonics/util/AlertHelper;->getDescriptionIDForPredictiveHighAlarm()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    .line 110
    :cond_c
    sget-object p5, Lcom/senseonics/util/TransmitterMessageCode;->RateFallingAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p1, p5, :cond_d

    .line 111
    iget-object p1, p0, Lcom/senseonics/util/AlertHelper;->context:Landroid/content/Context;

    sget-object p3, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MG_DL:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    invoke-static {p3}, Lcom/senseonics/util/AlertHelper;->getDescriptionIDForRateFallingAlarm(Lcom/senseonics/util/Utils$GLUCOSE_UNIT;)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    .line 112
    :cond_d
    sget-object p5, Lcom/senseonics/util/TransmitterMessageCode;->RateRisingAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p1, p5, :cond_e

    .line 113
    iget-object p1, p0, Lcom/senseonics/util/AlertHelper;->context:Landroid/content/Context;

    sget-object p3, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MG_DL:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    invoke-static {p3}, Lcom/senseonics/util/AlertHelper;->getDescriptionIDForRateRisingAlarm(Lcom/senseonics/util/Utils$GLUCOSE_UNIT;)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    .line 114
    :cond_e
    sget-object p5, Lcom/senseonics/util/TransmitterMessageCode;->SensorRetiredAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    const v4, 0x7f11027b

    const v5, 0x7f11027a

    if-eq p1, p5, :cond_32

    sget-object p5, Lcom/senseonics/util/TransmitterMessageCode;->MEPAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p1, p5, :cond_f

    goto/16 :goto_0

    .line 120
    :cond_f
    sget-object p5, Lcom/senseonics/util/TransmitterMessageCode;->SensorPrematureReplacementAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p1, p5, :cond_13

    .line 121
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->updateSensorPrematurePopupText()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 122
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->updateToHcp()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 123
    iget-object p1, p0, Lcom/senseonics/util/AlertHelper;->context:Landroid/content/Context;

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    .line 125
    :cond_10
    iget-object p1, p0, Lcom/senseonics/util/AlertHelper;->context:Landroid/content/Context;

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    .line 128
    :cond_11
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->updateToHcp()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 129
    iget-object p1, p0, Lcom/senseonics/util/AlertHelper;->context:Landroid/content/Context;

    const p3, 0x7f11027e

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    .line 131
    :cond_12
    iget-object p1, p0, Lcom/senseonics/util/AlertHelper;->context:Landroid/content/Context;

    const p3, 0x7f11027d

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    .line 134
    :cond_13
    sget-object p5, Lcom/senseonics/util/TransmitterMessageCode;->SensorRetiringSoon1Alarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p1, p5, :cond_15

    .line 135
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->updateToHcp()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 136
    iget-object p1, p0, Lcom/senseonics/util/AlertHelper;->context:Landroid/content/Context;

    const p3, 0x7f110286

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    .line 138
    :cond_14
    iget-object p1, p0, Lcom/senseonics/util/AlertHelper;->context:Landroid/content/Context;

    const p3, 0x7f110285

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    .line 140
    :cond_15
    sget-object p5, Lcom/senseonics/util/TransmitterMessageCode;->SensorRetiringSoon2Alarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p1, p5, :cond_17

    .line 141
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->updateToHcp()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 142
    iget-object p1, p0, Lcom/senseonics/util/AlertHelper;->context:Landroid/content/Context;

    const p3, 0x7f110288

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    .line 144
    :cond_16
    iget-object p1, p0, Lcom/senseonics/util/AlertHelper;->context:Landroid/content/Context;

    const p3, 0x7f110287

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    .line 146
    :cond_17
    sget-object p5, Lcom/senseonics/util/TransmitterMessageCode;->SensorRetiringSoon3Alarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p1, p5, :cond_19

    .line 147
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->updateToHcp()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 148
    iget-object p1, p0, Lcom/senseonics/util/AlertHelper;->context:Landroid/content/Context;

    const p3, 0x7f11028c

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    .line 150
    :cond_18
    iget-object p1, p0, Lcom/senseonics/util/AlertHelper;->context:Landroid/content/Context;

    const p3, 0x7f11028b

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    .line 152
    :cond_19
    sget-object p5, Lcom/senseonics/util/TransmitterMessageCode;->SensorRetiringSoon4Alarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p1, p5, :cond_1b

    .line 153
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->updateToHcp()Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 154
    iget-object p1, p0, Lcom/senseonics/util/AlertHelper;->context:Landroid/content/Context;

    const p3, 0x7f110290

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    .line 156
    :cond_1a
    iget-object p1, p0, Lcom/senseonics/util/AlertHelper;->context:Landroid/content/Context;

    const p3, 0x7f11028f

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    .line 158
    :cond_1b
    sget-object p5, Lcom/senseonics/util/TransmitterMessageCode;->SensorRetiringSoon5Alarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p1, p5, :cond_1d

    .line 159
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->updateToHcp()Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 160
    iget-object p1, p0, Lcom/senseonics/util/AlertHelper;->context:Landroid/content/Context;

    const p3, 0x7f110282

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    .line 162
    :cond_1c
    iget-object p1, p0, Lcom/senseonics/util/AlertHelper;->context:Landroid/content/Context;

    const p3, 0x7f110281

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    .line 164
    :cond_1d
    sget-object p5, Lcom/senseonics/util/TransmitterMessageCode;->SensorRetiringSoon6Alarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p1, p5, :cond_1f

    .line 165
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->updateToHcp()Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 166
    iget-object p1, p0, Lcom/senseonics/util/AlertHelper;->context:Landroid/content/Context;

    const p3, 0x7f11028a

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    .line 168
    :cond_1e
    iget-object p1, p0, Lcom/senseonics/util/AlertHelper;->context:Landroid/content/Context;

    const p3, 0x7f110289

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    .line 170
    :cond_1f
    sget-object p5, Lcom/senseonics/util/TransmitterMessageCode;->SensorRetiringSoon7Alarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p1, p5, :cond_21

    .line 171
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->updateToHcp()Z

    move-result p1

    if-eqz p1, :cond_20

    .line 172
    iget-object p1, p0, Lcom/senseonics/util/AlertHelper;->context:Landroid/content/Context;

    const p3, 0x7f11028e

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    .line 174
    :cond_20
    iget-object p1, p0, Lcom/senseonics/util/AlertHelper;->context:Landroid/content/Context;

    const p3, 0x7f11028d

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    .line 176
    :cond_21
    sget-object p5, Lcom/senseonics/util/TransmitterMessageCode;->SensorAgedOutAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p1, p5, :cond_23

    .line 177
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->updateToHcp()Z

    move-result p1

    if-eqz p1, :cond_22

    .line 178
    iget-object p1, p0, Lcom/senseonics/util/AlertHelper;->context:Landroid/content/Context;

    const p3, 0x7f110292

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    .line 180
    :cond_22
    iget-object p1, p0, Lcom/senseonics/util/AlertHelper;->context:Landroid/content/Context;

    const p3, 0x7f110291

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    .line 182
    :cond_23
    sget-object p5, Lcom/senseonics/util/TransmitterMessageCode;->EDRAlarm0:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p1, p5, :cond_25

    .line 183
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->updateToHcp()Z

    move-result p1

    if-eqz p1, :cond_24

    .line 184
    iget-object p1, p0, Lcom/senseonics/util/AlertHelper;->context:Landroid/content/Context;

    const p3, 0x7f110296

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    .line 186
    :cond_24
    iget-object p1, p0, Lcom/senseonics/util/AlertHelper;->context:Landroid/content/Context;

    const p3, 0x7f110295

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    .line 188
    :cond_25
    sget-object p5, Lcom/senseonics/util/TransmitterMessageCode;->EDRAlarm1:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p1, p5, :cond_27

    .line 189
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->updateToHcp()Z

    move-result p1

    if-eqz p1, :cond_26

    .line 190
    iget-object p1, p0, Lcom/senseonics/util/AlertHelper;->context:Landroid/content/Context;

    const p3, 0x7f110298

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    .line 192
    :cond_26
    iget-object p1, p0, Lcom/senseonics/util/AlertHelper;->context:Landroid/content/Context;

    const p3, 0x7f110297

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    .line 194
    :cond_27
    sget-object p5, Lcom/senseonics/util/TransmitterMessageCode;->EDRAlarm2:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p1, p5, :cond_29

    .line 195
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->updateToHcp()Z

    move-result p1

    if-eqz p1, :cond_28

    .line 196
    iget-object p1, p0, Lcom/senseonics/util/AlertHelper;->context:Landroid/content/Context;

    const p3, 0x7f11029a

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    .line 198
    :cond_28
    iget-object p1, p0, Lcom/senseonics/util/AlertHelper;->context:Landroid/content/Context;

    const p3, 0x7f110299

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    .line 200
    :cond_29
    sget-object p5, Lcom/senseonics/util/TransmitterMessageCode;->EDRAlarm3:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p1, p5, :cond_2b

    .line 201
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->updateToHcp()Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 202
    iget-object p1, p0, Lcom/senseonics/util/AlertHelper;->context:Landroid/content/Context;

    const p3, 0x7f11029c

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    .line 204
    :cond_2a
    iget-object p1, p0, Lcom/senseonics/util/AlertHelper;->context:Landroid/content/Context;

    const p3, 0x7f11029b

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    .line 206
    :cond_2b
    sget-object p5, Lcom/senseonics/util/TransmitterMessageCode;->EDRAlarm4:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p1, p5, :cond_2d

    .line 207
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->updateToHcp()Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 208
    iget-object p1, p0, Lcom/senseonics/util/AlertHelper;->context:Landroid/content/Context;

    const p3, 0x7f1100fe

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    .line 210
    :cond_2c
    iget-object p1, p0, Lcom/senseonics/util/AlertHelper;->context:Landroid/content/Context;

    const p3, 0x7f1100fd

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    .line 212
    :cond_2d
    sget-object p5, Lcom/senseonics/util/TransmitterMessageCode;->CalibrationGracePeriodAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p1, p5, :cond_2f

    .line 213
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->updateCalibrationGraceAlertText()Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 214
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 215
    invoke-virtual {p1, p3, p4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p3, -0x4

    .line 216
    invoke-virtual {p1, v1, p3}, Ljava/util/Calendar;->add(II)V

    .line 217
    iget-object p3, p0, Lcom/senseonics/util/AlertHelper;->context:Landroid/content/Context;

    const p4, 0x7f110074

    new-array p5, v3, [Ljava/lang/Object;

    invoke-static {p1, p3}, Lcom/senseonics/util/TimeProvider;->formatDateSimple(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p5, v2

    invoke-virtual {p3, p4, p5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    .line 219
    :cond_2e
    iget-object p1, p0, Lcom/senseonics/util/AlertHelper;->context:Landroid/content/Context;

    const p3, 0x7f110073

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    .line 221
    :cond_2f
    sget-object p3, Lcom/senseonics/util/TransmitterMessageCode;->CalibrationSuspiciousAlert:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p1, p3, :cond_31

    .line 222
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->updateCalibrationSuspiciousAlertText()Z

    move-result p1

    if-eqz p1, :cond_30

    .line 223
    iget-object p1, p0, Lcom/senseonics/util/AlertHelper;->context:Landroid/content/Context;

    const p3, 0x7f11007c

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    .line 225
    :cond_30
    iget-object p1, p0, Lcom/senseonics/util/AlertHelper;->context:Landroid/content/Context;

    const p3, 0x7f11007b

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    .line 228
    :cond_31
    iget-object p1, p0, Lcom/senseonics/util/AlertHelper;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    .line 115
    :cond_32
    :goto_0
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->updateToHcp()Z

    move-result p1

    if-eqz p1, :cond_33

    .line 116
    iget-object p1, p0, Lcom/senseonics/util/AlertHelper;->context:Landroid/content/Context;

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    .line 118
    :cond_33
    iget-object p1, p0, Lcom/senseonics/util/AlertHelper;->context:Landroid/content/Context;

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    .line 94
    :cond_34
    :goto_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p5

    .line 95
    invoke-virtual {p5, p3, p4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 96
    sget-object p3, Lcom/senseonics/util/TransmitterMessageCode;->OneCal:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p1, p3, :cond_35

    goto :goto_2

    :cond_35
    const/16 v4, 0xc

    :goto_2
    invoke-virtual {p5, v1, v4}, Ljava/util/Calendar;->add(II)V

    const/16 p1, 0xd

    .line 97
    iget-object p3, p0, Lcom/senseonics/util/AlertHelper;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p3}, Lcom/senseonics/model/TransmitterStateModel;->getCalibrationDurationSeconds()I

    move-result p3

    neg-int p3, p3

    invoke-virtual {p5, p1, p3}, Ljava/util/Calendar;->add(II)V

    .line 98
    iget-object p1, p0, Lcom/senseonics/util/AlertHelper;->context:Landroid/content/Context;

    new-array p3, v3, [Ljava/lang/Object;

    invoke-static {p5, p1}, Lcom/senseonics/util/TimeProvider;->formatDateSimple(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p4

    aput-object p4, p3, v2

    invoke-virtual {p1, v0, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    .line 72
    :cond_36
    :goto_3
    iget-object p1, p0, Lcom/senseonics/util/AlertHelper;->context:Landroid/content/Context;

    const v1, 0x7f1101f2

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 74
    :try_start_0
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    .line 75
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 76
    invoke-virtual {v1, p3, p4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p3, 0x6

    .line 77
    invoke-virtual {v1, p3, p5}, Ljava/util/Calendar;->add(II)V

    .line 78
    invoke-static {v1}, Lcom/senseonics/util/TimeProvider;->formatDateOnly(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :catch_0
    iget-object p3, p0, Lcom/senseonics/util/AlertHelper;->context:Landroid/content/Context;

    new-array p4, v3, [Ljava/lang/Object;

    aput-object p1, p4, v2

    invoke-virtual {p3, v0, p4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 231
    :goto_4
    iget-object p3, p0, Lcom/senseonics/util/AlertHelper;->context:Landroid/content/Context;

    invoke-static {p1, p2, p3}, Lcom/senseonics/util/Utils;->replaceTransmitterNameFromString(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTransmitterMessageCodeForCalibrateEvent(Lcom/senseonics/util/Utils$EVENT_TYPE;)Lcom/senseonics/util/TransmitterMessageCode;
    .locals 2

    .line 340
    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode;->NumberOfMessages:Lcom/senseonics/util/TransmitterMessageCode;

    .line 342
    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->CALIBRATE_NOW_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne p1, v1, :cond_0

    .line 343
    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode;->CalibrationRequiredAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_0

    .line 344
    :cond_0
    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->CALIBRATE_GRACE_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne p1, v1, :cond_1

    .line 345
    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode;->CalibrationGracePeriodAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    goto :goto_0

    .line 346
    :cond_1
    sget-object v1, Lcom/senseonics/util/Utils$EVENT_TYPE;->CALIBRATE_EXPIRED_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    if-ne p1, v1, :cond_2

    .line 347
    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode;->CalibrationExpiredAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    :cond_2
    :goto_0
    return-object v0
.end method
