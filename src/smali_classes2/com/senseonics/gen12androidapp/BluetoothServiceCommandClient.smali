.class public Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;
.super Ljava/lang/Object;
.source "BluetoothServiceCommandClient.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->context:Landroid/content/Context;

    return-void
.end method

.method private contextStartService(Landroid/content/Intent;)V
    .locals 1

    .line 521
    invoke-static {}, Lcom/senseonics/util/Utils;->isAndroid8OrAbove()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void
.end method

.method private gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;
    .locals 3

    .line 515
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->context:Landroid/content/Context;

    const-class v2, Lcom/senseonics/bluetoothle/BluetoothService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 516
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private postBloodGlucoseRecordRange()V
    .locals 1

    .line 231
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_BLOOD_GLUCOSE_RANGE:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 232
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method private postCompletedCalibrationsCountRequest()V
    .locals 1

    .line 473
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_COMPLETED_CALIBRATIONS_COUNT:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 474
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method private postCurrentPhase()V
    .locals 1

    .line 478
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_CURRENT_CALIBRATION_PHASE:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 479
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method private postIsOneCalPhase()V
    .locals 1

    .line 468
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_IS_ONE_CAL_PHASE:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 469
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method private postLastCalibrationDateRequest()V
    .locals 1

    .line 412
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_LAST_CALIBRATION_DATE:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 413
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method private postLastCalibrationTimeRequest()V
    .locals 1

    .line 417
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_LAST_CALIBRATION_TIME:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 418
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method private postPhaseStartDate()V
    .locals 1

    .line 452
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_PHASE_START_DATE:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 453
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method private postPhaseStartTime()V
    .locals 1

    .line 457
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_PHASE_START_TIME:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 458
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method private postReadGlucoseData()V
    .locals 1

    .line 81
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_GLUCOSE_DATA:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 82
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method private postReadMostRecentGlucoseDate()V
    .locals 1

    .line 91
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_MOST_RECENT_GLUCOSE_DATE:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 92
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method private postReadMostRecentGlucoseDateTime()V
    .locals 0

    .line 86
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postReadMostRecentGlucoseDate()V

    .line 87
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postReadMostRecentGlucoseTime()V

    return-void
.end method

.method private postReadMostRecentGlucoseTime()V
    .locals 1

    .line 96
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_MOST_RECENT_GLUCOSE_TIME:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 97
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method private postReadMostRecentGlucoseValue()V
    .locals 1

    .line 101
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_MOST_RECENT_GLUCOSE_VALUE:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 102
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method private postReadRawDataValue1()V
    .locals 1

    .line 120
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_RAW_VALUE_1:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 121
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method private postReadRawDataValue2()V
    .locals 1

    .line 125
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_RAW_VALUE_2:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 126
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method private postReadRawDataValue3()V
    .locals 1

    .line 130
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_RAW_VALUE_3:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 131
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method private postReadRawDataValue4()V
    .locals 1

    .line 135
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_RAW_VALUE_4:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 136
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method private postReadRawDataValue5()V
    .locals 1

    .line 140
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_RAW_VALUE_5:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 141
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method private postReadRawDataValue6()V
    .locals 1

    .line 145
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_RAW_VALUE_6:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 146
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method private postReadRawDataValue7()V
    .locals 1

    .line 150
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_RAW_VALUE_7:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 151
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method private postReadRawDataValue8()V
    .locals 1

    .line 155
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_RAW_VALUE_8:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 156
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method private postReadRawDataValues()V
    .locals 0

    .line 109
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postReadRawDataValue1()V

    .line 110
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postReadRawDataValue2()V

    .line 111
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postReadRawDataValue3()V

    .line 112
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postReadRawDataValue4()V

    .line 113
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postReadRawDataValue5()V

    .line 114
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postReadRawDataValue6()V

    .line 115
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postReadRawDataValue7()V

    .line 116
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postReadRawDataValue8()V

    return-void
.end method

.method private postSensorGlucoseAlertRecordRange()V
    .locals 1

    .line 225
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_GLUCOSE_ALERT_RANGE:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 226
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method private postSensorGlucoseRecordRange()V
    .locals 1

    .line 219
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_SENSOR_GLUCOSE_RANGE:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 220
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method private postVersionNumber()V
    .locals 1

    .line 442
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_VERSION_NUMBER:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 443
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method private postVersionNumberExtension()V
    .locals 1

    .line 437
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_VERSION_NUMBER_EXTENSION:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 438
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method private readCurrentTransmitterDateAndTime()V
    .locals 1

    .line 168
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_CURRENT_TRANSMITTER_DATE_TIME:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 169
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public postAtccalSramResult()V
    .locals 1

    .line 488
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_ATCCAL_SRAM_RESULT:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 489
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postBatteryLifeRequest()V
    .locals 1

    .line 483
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_BATTERY_LEVEL:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 484
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postCurrentCalibrationPhaseRequest()V
    .locals 0

    .line 462
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postIsOneCalPhase()V

    .line 463
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postCompletedCalibrationsCountRequest()V

    .line 464
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postCurrentPhase()V

    return-void
.end method

.method public postEEP24MSP()V
    .locals 1

    .line 204
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_EEP24_MSP:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 205
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postEnterDiagnosticMode()V
    .locals 1

    .line 500
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->ENTER_DIAGNOSTIC_MODE:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 501
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postExerciseVibration()V
    .locals 1

    .line 493
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->supportXLNewCommands()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->EXERCISE_VIBRATION:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 495
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public postExitDiagnosticMode()V
    .locals 1

    .line 505
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->EXIT_DIAGNOSTIC_MODE:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 506
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postGetModelRequest()V
    .locals 1

    .line 427
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_MODEL:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 428
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postGetRangesForSyncing()V
    .locals 0

    .line 238
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postSensorGlucoseRecordRange()V

    .line 239
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postSensorGlucoseAlertRecordRange()V

    .line 245
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postBloodGlucoseRecordRange()V

    return-void
.end method

.method public postLastCalibrationDateTimeRequest()V
    .locals 0

    .line 407
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postLastCalibrationDateRequest()V

    .line 408
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postLastCalibrationTimeRequest()V

    return-void
.end method

.method public postMEPMSPInfo()V
    .locals 0

    .line 209
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postReadMEPSavedValue()V

    .line 210
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postMEPSavedRefChannelMetric()V

    .line 211
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postMEPSavedDriftMetric()V

    .line 212
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postMEPSavedLowRefMetric()V

    .line 213
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postMEPSavedSpike()V

    .line 214
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postEEP24MSP()V

    return-void
.end method

.method public postMEPSavedDriftMetric()V
    .locals 1

    .line 189
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_MEP_SAVED_DRIFT_METRIC:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 190
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postMEPSavedLowRefMetric()V
    .locals 1

    .line 194
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_MEP_SAVED_LOW_REF_METRIC:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 195
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postMEPSavedRefChannelMetric()V
    .locals 1

    .line 184
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_MEP_SAVED_REF_CHANNEL_METRIC:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 185
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postMEPSavedSpike()V
    .locals 1

    .line 199
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_MEP_SAVED_SPIKE:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 200
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postMarkPatientEventDeleted(J)V
    .locals 2

    .line 59
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->MARK_PATIENT_EVENT_RECORD_DELETED:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "record number"

    .line 60
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 61
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postPhaseStartDateTimeRequest()V
    .locals 0

    .line 447
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postPhaseStartDate()V

    .line 448
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postPhaseStartTime()V

    return-void
.end method

.method public postPingRequest()V
    .locals 1

    .line 422
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->PING:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 423
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postReadClinicalModeDuration()V
    .locals 1

    .line 27
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_CLINICAL_MODE_DURATION:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postReadCurrentTransmitterDateAndTime()V
    .locals 0

    .line 163
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postReadMostRecentGlucoseDateTime()V

    .line 164
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->readCurrentTransmitterDateAndTime()V

    return-void
.end method

.method public postReadMEPSavedValue()V
    .locals 1

    .line 179
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_MEP_SAVED_VALUE:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 180
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postReadRawDataAndGlucoseData()V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postReadRawDataValues()V

    .line 75
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postReadMostRecentGlucoseDateTime()V

    .line 76
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postReadMostRecentGlucoseValue()V

    .line 77
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postReadGlucoseData()V

    return-void
.end method

.method public postReadSensorGlucoseAlertsAndStatus()V
    .locals 1

    .line 366
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_GLUCOSE_ALERTS_AND_STATUS:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 367
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postReadSignalStrengthRequest(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 510
    sget-object p1, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_SIGNAL_STRENGTH_RAW:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->READ_SIGNAL_STRENGTH:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    :goto_0
    invoke-direct {p0, p1}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object p1

    .line 511
    invoke-direct {p0, p1}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postSendCurrentDateAndTimeToTransmitter()V
    .locals 1

    .line 174
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->SEND_CURRENT_DATE_TIME_TO_TRANSMITTER:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 175
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postSnooze(I)V
    .locals 2

    .line 31
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->SNOOZE:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "PushNotificationMessageCode"

    .line 32
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 33
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postSync(Lcom/senseonics/bluetoothle/TransmitterSyncRequest;)V
    .locals 3

    .line 65
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->SYNC:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 66
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/TransmitterSyncRequest;->getExpectedResponseId()I

    move-result v1

    const-string v2, "expected response id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 67
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/TransmitterSyncRequest;->getData()[I

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 68
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/TransmitterSyncRequest;->getHighestExpectedRecordNumber()I

    move-result v1

    const-string v2, "record number"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 69
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/TransmitterSyncRequest;->getExpectResponseCount()I

    move-result p1

    const-string v1, "expected response count"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 70
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postVersionNumberRequest()V
    .locals 0

    .line 432
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postVersionNumberExtension()V

    .line 433
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postVersionNumber()V

    return-void
.end method

.method public postWriteClinicalModeRequest(Z)V
    .locals 2

    .line 53
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->WRITE_CLINICAL_MODE:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "is clinical mode"

    .line 54
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 55
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postWriteDelayBLEDisconnectAlarmAddressRequest(I)V
    .locals 2

    .line 401
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->WRITE_BLE_DISCONNECT_DELAY:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "single int"

    .line 402
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 403
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postWriteEveningCalibrationTime(II)V
    .locals 2

    .line 359
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->WRITE_EVENING_CALIBRATION_TIME:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "calibration hour"

    .line 360
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "calibration minute"

    .line 361
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 362
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postWriteGlucoseEvent(Lcom/senseonics/events/GlucoseEventPoint;)V
    .locals 4

    .line 37
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->WRITE_GLUCOSE_EVENT_POINT:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 38
    invoke-virtual {p1}, Lcom/senseonics/events/GlucoseEventPoint;->getTimestamp()J

    move-result-wide v1

    const-string v3, "milliseconds"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 39
    invoke-virtual {p1}, Lcom/senseonics/events/GlucoseEventPoint;->getGlucoseLevel()I

    move-result p1

    const-string v1, "glucose level"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 40
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postWriteHighGlucoseAlarmEnabledRequest(Z)V
    .locals 2

    .line 343
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->WRITE_HIGH_ALARM_ENABLE:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "single bool"

    .line 344
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 345
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postWriteHighGlucoseAlarmRepeatIntervalDayTime(I)V
    .locals 2

    .line 389
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->WRITE_HIGH_GLUCOSE_ALARM_REPEAT_DAY:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "single int"

    .line 390
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 391
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postWriteHighGlucoseAlarmRepeatIntervalNightTime(I)V
    .locals 2

    .line 395
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->WRITE_HIGH_GLUCOSE_ALARM_REPEAT_NIGHT:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "single int"

    .line 396
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 397
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postWriteHighGlucoseAlarmRequest(I)V
    .locals 2

    .line 267
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->WRITE_HIGH_ALARM:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "single int"

    .line 268
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 269
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postWriteHighGlucoseTarget(I)V
    .locals 2

    .line 255
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->WRITE_HIGH_TARGET:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "single int"

    .line 256
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 257
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postWriteLowGlucoseAlarmRepeatIntervalDayTime(I)V
    .locals 2

    .line 377
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->WRITE_LOW_GLUCOSE_ALARM_REPEAT_DAY:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "single int"

    .line 378
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 379
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postWriteLowGlucoseAlarmRepeatIntervalNightTime(I)V
    .locals 2

    .line 383
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->WRITE_LOW_GLUCOSE_ALARM_REPEAT_NIGHT:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "single int"

    .line 384
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 385
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postWriteLowGlucoseAlarmRequest(I)V
    .locals 2

    .line 261
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->WRITE_LOW_ALARM:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "single int"

    .line 262
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 263
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postWriteLowGlucoseTargetRequest(I)V
    .locals 2

    .line 249
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->WRITE_LOW_TARGET:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "single int"

    .line 250
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 251
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postWriteMorningCalibrationTime(II)V
    .locals 2

    .line 352
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->WRITE_MORNING_CALIBRATION_TIME:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "calibration hour"

    .line 353
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "calibration minute"

    .line 354
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 355
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postWritePatientEvent(Lcom/senseonics/events/PatientEventPoint;)V
    .locals 3

    .line 44
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->WRITE_PATIENT_EVENT_POINT:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    .line 45
    invoke-interface {p1}, Lcom/senseonics/events/PatientEventPoint;->quantity()I

    move-result v1

    const-string v2, "event quantity"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 46
    invoke-interface {p1}, Lcom/senseonics/events/PatientEventPoint;->eventSubTypeId()I

    move-result v1

    const-string v2, "event sub type id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 47
    invoke-interface {p1}, Lcom/senseonics/events/PatientEventPoint;->eventTypeId()I

    move-result v1

    const-string v2, "event type id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 48
    invoke-interface {p1}, Lcom/senseonics/events/PatientEventPoint;->getTimestamp()J

    move-result-wide v1

    const-string p1, "milliseconds"

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 49
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postWritePredictiveAlertsRequest(Z)V
    .locals 2

    .line 273
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->WRITE_PREDICTIVE_ENABLE:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "single bool"

    .line 274
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 275
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postWritePredictiveHighAlertsRequest(Z)V
    .locals 2

    .line 284
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->WRITE_PREDICTIVE_HIGH_ENABLE:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "single bool"

    .line 285
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 286
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postWritePredictiveHighTimeIntervalRequest(I)V
    .locals 2

    .line 290
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->WRITE_PREDICTIVE_HIGH_TIME:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "single int"

    .line 291
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 292
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postWritePredictiveLowAlertsRequest(Z)V
    .locals 2

    .line 296
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->WRITE_PREDICTIVE_LOW_ENABLE:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "single bool"

    .line 297
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 298
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postWritePredictiveLowTimeIntervalRequest(I)V
    .locals 2

    .line 302
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->WRITE_PREDICTIVE_LOW_TIME:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "single int"

    .line 303
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 304
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postWritePredictiveTimeIntervalRequest(I)V
    .locals 0

    .line 279
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postWritePredictiveHighTimeIntervalRequest(I)V

    .line 280
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postWritePredictiveLowTimeIntervalRequest(I)V

    return-void
.end method

.method public postWriteRateAlert(Z)V
    .locals 2

    .line 308
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->WRITE_RATE_ENABLE:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "single bool"

    .line 309
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 310
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postWriteRateAlertThresholdRequest(I)V
    .locals 0

    .line 314
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postWriteRateFallingAlertThresholdRequest(I)V

    .line 315
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->postWriteRateRisingAlertThresholdRequest(I)V

    return-void
.end method

.method public postWriteRateFallingAlert(Z)V
    .locals 2

    .line 319
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->WRITE_RATE_FALLING_ENABLE:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "single bool"

    .line 320
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 321
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postWriteRateFallingAlertThresholdRequest(I)V
    .locals 2

    .line 325
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->WRITE_RATE_FALLING_THRESHOLD:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "single int"

    .line 326
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 327
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postWriteRateRisingAlert(Z)V
    .locals 2

    .line 331
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->WRITE_RATE_RISING_ENABLE:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "single bool"

    .line 332
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 333
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postWriteRateRisingAlertThresholdRequest(I)V
    .locals 2

    .line 337
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->WRITE_RATE_RISING_THRESHOLD:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "single int"

    .line 338
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 339
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method

.method public postWriteVibrateModeRequest(Z)V
    .locals 2

    .line 371
    sget-object v0, Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;->WRITE_VIBRATION_MODE:Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;

    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->gimmeAnIntent(Lcom/senseonics/bluetoothle/CommandProcessor$COMMAND;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "single bool"

    .line 372
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 373
    invoke-direct {p0, v0}, Lcom/senseonics/gen12androidapp/BluetoothServiceCommandClient;->contextStartService(Landroid/content/Intent;)V

    return-void
.end method
