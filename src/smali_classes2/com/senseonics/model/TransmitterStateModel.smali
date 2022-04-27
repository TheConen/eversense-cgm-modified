.class public Lcom/senseonics/model/TransmitterStateModel;
.super Ljava/lang/Object;
.source "TransmitterStateModel.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field public static CALIBRATIONS_REQUIRED_BEFORE_GLUCOSE_IN_INITIALIZATION_PHASE:I = 0x0

.field private static CALIBRATIONS_REQUIRED_DURING_INITIALIZATION_PHASE:I = 0x0

.field private static final DEFAULT_CALIBRATION_MADE_THIS_PHASE:I = -0x1

.field static final DEFAULT_SAMPLING_INTERVAL:I

.field private static final POST_CALIBRATION_NO_OF_SAMPLINGS:I = 0x3

.field private static communicationProtocolVersion_Static:Ljava/lang/String;

.field private static mmaFeatures_Static:I


# instance fields
.field private EEP24MSP:F

.field private MEPSavedDriftMetric:F

.field private MEPSavedLowRefMetric:F

.field private MEPSavedRefChannelMetric:F

.field private MEPSavedSpike:F

.field private MEPSavedValue:F

.field private alertRecordRange:Lcom/senseonics/util/Range;

.field private algorithmParameterFormatVersion:I

.field private atccalCrcRegisterExists:Z

.field private atccalSramResultRegisterExists:Z

.field private batteryLevel:Lcom/senseonics/model/BATTERY_LEVEL;

.field private batteryVoltage:F

.field private bloodGlucoseRecordRange:Lcom/senseonics/util/Range;

.field private calibrationsMadeInThisPhase:I

.field private clinicalMode:Z

.field private communicationProtocolVersion:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private countDownTimer:Landroid/os/CountDownTimer;

.field private currentCalibrationPhase:Lcom/senseonics/util/Utils$CAL_PHASE;

.field private currentCountdown:J

.field private currentMessageCode:Lcom/senseonics/util/TransmitterMessageCode;

.field private dayStartTimeHour:I

.field private dayStartTimeMinute:I

.field private delayBLEDisconnectionAlarm:I

.field private doNotDisturbMode:Z

.field private eveningCalibrationLocalTimeHour:I

.field private eveningCalibrationLocalTimeMinute:I

.field private eveningCalibrationTimeHour:I

.field private eveningCalibrationTimeMinute:I

.field private eventBus:Lde/greenrobot/event/EventBus;

.field private glucoseLevel:I

.field private glucoseTimestamp:Ljava/util/Calendar;

.field private glucoseTrendDirection:Lcom/senseonics/util/Utils$ARROW_TYPE;

.field private highGlucoseAlarmRepeatIntervalDayTime:I

.field private highGlucoseAlarmRepeatIntervalNightTime:I

.field private highGlucoseAlarmThreshold:I

.field private highGlucoseAlarmsEnabled:Z

.field private highGlucoseAlertThreshold:I

.field private highGlucoseTarget:I

.field private hysteresisHighGlocosePercent:I

.field private hysteresisHighPredictiveGlocosePercent:I

.field private hysteresisLowGlucoseValueMgDl:I

.field private hysteresisLowPredictiveGlucoseValueMgDl:I

.field private isBluetoothEnabled:Z

.field private isGlucoseStale:Z

.field private isOneCalPhaseRegisterExists:Z

.field private isOneCalPhaseValue:I

.field private keepAliveAlertActive:Z

.field private lastCalibrationDateAndTime:Ljava/util/Calendar;

.field private lastGlucoseSyncedMaxRecordTimestamp:J

.field private lastReadTransmitterDatetimeTimestamp:J

.field private linkedSensorId:Ljava/lang/String;

.field private lowGlucoseAlarmRepeatIntervalDayTime:I

.field private lowGlucoseAlarmRepeatIntervalNightTime:I

.field private lowGlucoseAlarmThreshold:I

.field private lowGlucoseAlertThreshold:I

.field private lowGlucoseTarget:I

.field private maxCalibrationThreshold:I

.field private maxSyncedAlertRecord:I

.field private maxSyncedBloodGlucoseRecord:I

.field private maxSyncedSensorRecord:I

.field private minCalibrationThreshold:I

.field private minutesAfterNextCalibrationTime:I

.field private minutesBeforeNextCalibrationTime:I

.field private minutesRemainingUntilCalibrationAllowed:I

.field private mmaFeatures:I

.field private morningCalibrationLocalTimeHour:I

.field private morningCalibrationLocalTimeMinute:I

.field private morningCalibrationTimeHour:I

.field private morningCalibrationTimeMinute:I

.field private mostRecentGlucoseDateTime:Ljava/util/Calendar;

.field private mostRecentGlucoseRegisterValue:I

.field private nextScheduledCalibration:Ljava/util/Calendar;

.field private nightStartTimeHour:I

.field private nightStartTimeMinute:I

.field private placementModeInProgress:Z

.field private predictiveAlertsActivated:Z

.field private predictiveFallingRateAlertMinuteInterval:I

.field private predictiveHighAlertsActivated:Z

.field private predictiveLowAlertsActivated:Z

.field private predictiveRisingRateAlertMinuteInterval:I

.field private preferenceObjectSaverRetriver:Lcom/senseonics/util/PreferenceObjectSaverRetriver;

.field private rateAlertFallingThreshold:F

.field private rateAlertRisingThreshold:F

.field private rateAlertsActivated:Z

.field private rateFallingAlertsActivated:Z

.field private rateRisingAlertsActivated:Z

.field private rawDataValue1:I

.field private rawDataValue2:I

.field private rawDataValue3:I

.field private rawDataValue4:I

.field private rawDataValue5:I

.field private rawDataValue6:I

.field private rawDataValue7:I

.field private rawDataValue8:I

.field private readyForCalibrationState:I

.field responseIdToParsedResponseMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/senseonics/model/ParsedResponse;",
            ">;"
        }
    .end annotation
.end field

.field private samplingIntervalInSeconds:I

.field private sensorGlucoseAlertStatus:[I

.field private sensorGlucoseRecordRange:Lcom/senseonics/util/Range;

.field private sensorInsertionDateAndTime:Ljava/util/Calendar;

.field private sharedPreferences:Landroid/content/SharedPreferences;

.field private signalStrength:Lcom/senseonics/model/SIGNAL_STRENGTH;

.field private signalStrengthIntValue:I

.field private signalStrengthRawIntValue:I

.field private signalStrengthRawRegisterExists:Z

.field private startCalibrationPhaseDateAndTime:Ljava/util/Calendar;

.field private supportForDelayBLEDisconnectionAlarm:Z

.field private supportForHighGluAlarmPredRateHighLowSettings:Z

.field private transmitter:Lcom/senseonics/bluetoothle/Transmitter;

.field private transmitterAddress:Ljava/lang/String;

.field private transmitterConnectionState:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

.field private transmitterModelNumber:Ljava/lang/String;

.field private transmitterName:Ljava/lang/String;

.field private transmitterSerialNumber:Ljava/lang/String;

.field private transmitterTime:J

.field private transmitterVersionExtensionNumber:Ljava/lang/String;

.field private transmitterVersionNumber:Ljava/lang/String;

.field private unLinkedSensorId:Ljava/lang/String;

.field private vibrateMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 75
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/senseonics/model/TransmitterStateModel;->DEFAULT_SAMPLING_INTERVAL:I

    const/4 v0, 0x4

    .line 80
    sput v0, Lcom/senseonics/model/TransmitterStateModel;->CALIBRATIONS_REQUIRED_DURING_INITIALIZATION_PHASE:I

    const/4 v0, 0x2

    .line 81
    sput v0, Lcom/senseonics/model/TransmitterStateModel;->CALIBRATIONS_REQUIRED_BEFORE_GLUCOSE_IN_INITIALIZATION_PHASE:I

    return-void
.end method

.method public constructor <init>(Lde/greenrobot/event/EventBus;Lcom/senseonics/model/DefaultedHashMap;Landroid/content/SharedPreferences;Landroid/content/Context;Lcom/senseonics/util/PreferenceObjectSaverRetriver;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/greenrobot/event/EventBus;",
            "Lcom/senseonics/model/DefaultedHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/senseonics/model/ParsedResponse;",
            ">;",
            "Landroid/content/SharedPreferences;",
            "Landroid/content/Context;",
            "Lcom/senseonics/util/PreferenceObjectSaverRetriver;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    sget-object v0, Lcom/senseonics/model/BATTERY_LEVEL;->UNKNOWN_NEG_1:Lcom/senseonics/model/BATTERY_LEVEL;

    iput-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->batteryLevel:Lcom/senseonics/model/BATTERY_LEVEL;

    .line 124
    sget-object v0, Lcom/senseonics/util/Utils$CAL_PHASE;->UNDERTERMINED:Lcom/senseonics/util/Utils$CAL_PHASE;

    iput-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->currentCalibrationPhase:Lcom/senseonics/util/Utils$CAL_PHASE;

    const/4 v0, -0x1

    .line 125
    iput v0, p0, Lcom/senseonics/model/TransmitterStateModel;->calibrationsMadeInThisPhase:I

    .line 237
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    .line 238
    iput-object p2, p0, Lcom/senseonics/model/TransmitterStateModel;->responseIdToParsedResponseMap:Ljava/util/Map;

    .line 239
    iput-object p3, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 240
    iput-object p4, p0, Lcom/senseonics/model/TransmitterStateModel;->context:Landroid/content/Context;

    .line 241
    iput-object p5, p0, Lcom/senseonics/model/TransmitterStateModel;->preferenceObjectSaverRetriver:Lcom/senseonics/util/PreferenceObjectSaverRetriver;

    .line 242
    invoke-virtual {p1, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 244
    iput-boolean p1, p0, Lcom/senseonics/model/TransmitterStateModel;->isBluetoothEnabled:Z

    const/4 p2, 0x0

    .line 247
    iput-object p2, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitter:Lcom/senseonics/bluetoothle/Transmitter;

    .line 248
    sget-object p4, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->DISCONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    iput-object p4, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterConnectionState:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    const-string p4, "TransmitterAddress"

    .line 249
    invoke-interface {p3, p4, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterAddress:Ljava/lang/String;

    const-string p4, "TransmitterName"

    .line 250
    invoke-interface {p3, p4, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterName:Ljava/lang/String;

    const-string p4, "TransmitterSerialNumber"

    .line 251
    invoke-interface {p3, p4, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterSerialNumber:Ljava/lang/String;

    const-string p4, "ModelNumber"

    .line 252
    invoke-interface {p3, p4, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterModelNumber:Ljava/lang/String;

    const-string p4, "FirmwareVersion"

    .line 253
    invoke-interface {p3, p4, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterVersionNumber:Ljava/lang/String;

    const-string p4, "ExtensionNumber"

    .line 254
    invoke-interface {p3, p4, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterVersionExtensionNumber:Ljava/lang/String;

    const-wide/16 v1, 0x0

    const-string p4, "TransmitterTime"

    .line 255
    invoke-interface {p3, p4, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterTime:J

    .line 256
    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->getStartCalibrationPhaseDateAndTime()Ljava/util/Calendar;

    move-result-object p4

    iput-object p4, p0, Lcom/senseonics/model/TransmitterStateModel;->startCalibrationPhaseDateAndTime:Ljava/util/Calendar;

    .line 257
    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->getlastCalibrationDateAndTime()Ljava/util/Calendar;

    move-result-object p4

    iput-object p4, p0, Lcom/senseonics/model/TransmitterStateModel;->lastCalibrationDateAndTime:Ljava/util/Calendar;

    .line 259
    sget-object p4, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->REASON_UNKNOWN:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    invoke-virtual {p4}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->getId()I

    move-result p4

    iput p4, p0, Lcom/senseonics/model/TransmitterStateModel;->readyForCalibrationState:I

    .line 260
    iput-object p2, p0, Lcom/senseonics/model/TransmitterStateModel;->nextScheduledCalibration:Ljava/util/Calendar;

    .line 261
    iput v0, p0, Lcom/senseonics/model/TransmitterStateModel;->minutesBeforeNextCalibrationTime:I

    .line 262
    iput v0, p0, Lcom/senseonics/model/TransmitterStateModel;->minutesAfterNextCalibrationTime:I

    .line 263
    iput v0, p0, Lcom/senseonics/model/TransmitterStateModel;->minutesRemainingUntilCalibrationAllowed:I

    const-string p4, "MinCalibrationThreshold"

    const/16 v3, 0x28

    .line 264
    invoke-interface {p3, p4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p4

    iput p4, p0, Lcom/senseonics/model/TransmitterStateModel;->minCalibrationThreshold:I

    const-string p4, "MaxCalibrationThreshold"

    const/16 v3, 0x190

    .line 265
    invoke-interface {p3, p4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p4

    iput p4, p0, Lcom/senseonics/model/TransmitterStateModel;->maxCalibrationThreshold:I

    .line 268
    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->getSensorInsertionDateAndTime()Ljava/util/Calendar;

    move-result-object p4

    iput-object p4, p0, Lcom/senseonics/model/TransmitterStateModel;->sensorInsertionDateAndTime:Ljava/util/Calendar;

    const-string p4, "SensorId"

    .line 269
    invoke-interface {p3, p4, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/senseonics/model/TransmitterStateModel;->linkedSensorId:Ljava/lang/String;

    const-string p4, "UnlinkedSensorId"

    .line 270
    invoke-interface {p3, p4, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/senseonics/model/TransmitterStateModel;->unLinkedSensorId:Ljava/lang/String;

    .line 272
    iput-object p2, p0, Lcom/senseonics/model/TransmitterStateModel;->glucoseTimestamp:Ljava/util/Calendar;

    .line 273
    sget p4, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_UNKNOWN:I

    iput p4, p0, Lcom/senseonics/model/TransmitterStateModel;->glucoseLevel:I

    const p4, 0xffff

    .line 274
    iput p4, p0, Lcom/senseonics/model/TransmitterStateModel;->mostRecentGlucoseRegisterValue:I

    .line 275
    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->getMostRecentGlucoseDateTime()Ljava/util/Calendar;

    move-result-object p4

    iput-object p4, p0, Lcom/senseonics/model/TransmitterStateModel;->mostRecentGlucoseDateTime:Ljava/util/Calendar;

    .line 276
    sget-object p4, Lcom/senseonics/util/Utils$ARROW_TYPE;->STALE:Lcom/senseonics/util/Utils$ARROW_TYPE;

    iput-object p4, p0, Lcom/senseonics/model/TransmitterStateModel;->glucoseTrendDirection:Lcom/senseonics/util/Utils$ARROW_TYPE;

    .line 277
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->signalStrengthIntValue:I

    const-string p4, "SignalStrengthRawRegisterExists"

    .line 278
    invoke-interface {p3, p4, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p4

    iput-boolean p4, p0, Lcom/senseonics/model/TransmitterStateModel;->signalStrengthRawRegisterExists:Z

    .line 279
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->signalStrengthRawIntValue:I

    .line 280
    sget-object p4, Lcom/senseonics/model/SIGNAL_STRENGTH;->NO_SIGNAL:Lcom/senseonics/model/SIGNAL_STRENGTH;

    iput-object p4, p0, Lcom/senseonics/model/TransmitterStateModel;->signalStrength:Lcom/senseonics/model/SIGNAL_STRENGTH;

    const-string p4, "TransmitterBatteryVoltage"

    const/4 v3, 0x0

    .line 281
    invoke-interface {p3, p4, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p4

    iput p4, p0, Lcom/senseonics/model/TransmitterStateModel;->batteryVoltage:F

    .line 282
    sget-object p4, Lcom/senseonics/model/BATTERY_LEVEL;->UNKNOWN_NEG_1:Lcom/senseonics/model/BATTERY_LEVEL;

    invoke-virtual {p4}, Lcom/senseonics/model/BATTERY_LEVEL;->name()Ljava/lang/String;

    move-result-object p4

    const-string v3, "TransmitterBatterylevel"

    invoke-interface {p3, v3, p4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/senseonics/model/BATTERY_LEVEL;->valueOf(Ljava/lang/String;)Lcom/senseonics/model/BATTERY_LEVEL;

    move-result-object p4

    iput-object p4, p0, Lcom/senseonics/model/TransmitterStateModel;->batteryLevel:Lcom/senseonics/model/BATTERY_LEVEL;

    .line 283
    sget-object p4, Lcom/senseonics/util/TransmitterMessageCode;->NumberOfMessages:Lcom/senseonics/util/TransmitterMessageCode;

    iput-object p4, p0, Lcom/senseonics/model/TransmitterStateModel;->currentMessageCode:Lcom/senseonics/util/TransmitterMessageCode;

    .line 284
    iput-boolean p1, p0, Lcom/senseonics/model/TransmitterStateModel;->placementModeInProgress:Z

    .line 285
    iput-boolean p1, p0, Lcom/senseonics/model/TransmitterStateModel;->clinicalMode:Z

    .line 286
    sget-object p4, Lcom/senseonics/util/Utils$CAL_PHASE;->UNDERTERMINED:Lcom/senseonics/util/Utils$CAL_PHASE;

    invoke-virtual {p4}, Lcom/senseonics/util/Utils$CAL_PHASE;->name()Ljava/lang/String;

    move-result-object p4

    const-string v3, "CurrentCalibrationPhase"

    invoke-interface {p3, v3, p4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/senseonics/util/Utils$CAL_PHASE;->valueOf(Ljava/lang/String;)Lcom/senseonics/util/Utils$CAL_PHASE;

    move-result-object p4

    iput-object p4, p0, Lcom/senseonics/model/TransmitterStateModel;->currentCalibrationPhase:Lcom/senseonics/util/Utils$CAL_PHASE;

    const-string p4, "CalibrationsMadeInThisPhase"

    .line 287
    invoke-interface {p3, p4, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p4

    iput p4, p0, Lcom/senseonics/model/TransmitterStateModel;->calibrationsMadeInThisPhase:I

    .line 289
    sget p4, Lcom/senseonics/model/TransmitterStateModel;->DEFAULT_SAMPLING_INTERVAL:I

    const-string v3, "prefSamplingInterval"

    invoke-interface {p3, v3, p4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p4

    iput p4, p0, Lcom/senseonics/model/TransmitterStateModel;->samplingIntervalInSeconds:I

    const-string p4, "prefAlgorithmParameterFormatVersion"

    .line 291
    invoke-interface {p3, p4, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p4

    iput p4, p0, Lcom/senseonics/model/TransmitterStateModel;->algorithmParameterFormatVersion:I

    const-string p4, "prefCommunicationProtocolVersion"

    .line 293
    invoke-interface {p3, p4, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/senseonics/model/TransmitterStateModel;->communicationProtocolVersion:Ljava/lang/String;

    .line 294
    sput-object p2, Lcom/senseonics/model/TransmitterStateModel;->communicationProtocolVersion_Static:Ljava/lang/String;

    .line 296
    iput-wide v1, p0, Lcom/senseonics/model/TransmitterStateModel;->currentCountdown:J

    const-string p2, "glucoseTargetHigh"

    const/16 p4, 0x8c

    .line 305
    invoke-interface {p3, p2, p4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseTarget:I

    const-string p2, "glucoseTargetLow"

    const/16 p4, 0x50

    .line 306
    invoke-interface {p3, p2, p4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseTarget:I

    const-string p2, "glucoseAlarmHigh"

    const/16 p4, 0xc8

    .line 307
    invoke-interface {p3, p2, p4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseAlarmThreshold:I

    const-string p2, "glucoseAlarmLow"

    const/16 p4, 0x46

    .line 308
    invoke-interface {p3, p2, p4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseAlarmThreshold:I

    const/16 p2, 0x127

    .line 310
    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseAlertThreshold:I

    const/16 p2, 0x3c

    .line 311
    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseAlertThreshold:I

    const-string p2, "predictiveAlertsActivated"

    .line 313
    invoke-interface {p3, p2, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/senseonics/model/TransmitterStateModel;->predictiveAlertsActivated:Z

    const-string p2, "predictiveLowAlertsActivated"

    .line 314
    invoke-interface {p3, p2, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/senseonics/model/TransmitterStateModel;->predictiveLowAlertsActivated:Z

    const-string p2, "predictiveHighAlertsActivated"

    .line 315
    invoke-interface {p3, p2, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/senseonics/model/TransmitterStateModel;->predictiveHighAlertsActivated:Z

    const/16 p2, 0x14

    const-string p4, "predictiveMinutes"

    .line 316
    invoke-interface {p3, p4, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p4

    iput p4, p0, Lcom/senseonics/model/TransmitterStateModel;->predictiveFallingRateAlertMinuteInterval:I

    const-string p4, "predictiveRisingMinutes"

    .line 317
    invoke-interface {p3, p4, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->predictiveRisingRateAlertMinuteInterval:I

    const/high16 p2, 0x40200000    # 2.5f

    const-string p4, "rateAlertValue"

    .line 318
    invoke-interface {p3, p4, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p4

    iput p4, p0, Lcom/senseonics/model/TransmitterStateModel;->rateAlertFallingThreshold:F

    const-string p4, "rateAlertRisingValue"

    .line 319
    invoke-interface {p3, p4, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->rateAlertRisingThreshold:F

    const-string p2, "rateAlertsActivated"

    .line 320
    invoke-interface {p3, p2, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/senseonics/model/TransmitterStateModel;->rateAlertsActivated:Z

    const-string p2, "rateFallingAlertsActivated"

    .line 321
    invoke-interface {p3, p2, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/senseonics/model/TransmitterStateModel;->rateFallingAlertsActivated:Z

    const-string p2, "rateRisingAlertsActivated"

    .line 322
    invoke-interface {p3, p2, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/senseonics/model/TransmitterStateModel;->rateRisingAlertsActivated:Z

    const/4 p2, 0x1

    const-string p4, "supportForHighGluAlarmPredRateHighLowSettings"

    .line 323
    invoke-interface {p3, p4, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p4

    iput-boolean p4, p0, Lcom/senseonics/model/TransmitterStateModel;->supportForHighGluAlarmPredRateHighLowSettings:Z

    const-string p4, "HysteresisPercent"

    .line 325
    invoke-interface {p3, p4, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p4

    iput p4, p0, Lcom/senseonics/model/TransmitterStateModel;->hysteresisHighGlocosePercent:I

    const-string p4, "HysteresisValue"

    .line 326
    invoke-interface {p3, p4, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p4

    iput p4, p0, Lcom/senseonics/model/TransmitterStateModel;->hysteresisLowGlucoseValueMgDl:I

    const-string p4, "HysteresisPredictivePercent"

    .line 328
    invoke-interface {p3, p4, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p4

    iput p4, p0, Lcom/senseonics/model/TransmitterStateModel;->hysteresisHighPredictiveGlocosePercent:I

    const-string p4, "HysteresisPredictiveValue"

    .line 329
    invoke-interface {p3, p4, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p4

    iput p4, p0, Lcom/senseonics/model/TransmitterStateModel;->hysteresisLowPredictiveGlucoseValueMgDl:I

    const-string p4, "DelayBLEDisconnectionAlarm"

    const/16 v3, 0xb4

    .line 331
    invoke-interface {p3, p4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p4

    iput p4, p0, Lcom/senseonics/model/TransmitterStateModel;->delayBLEDisconnectionAlarm:I

    const-string p4, "SupportForDelayBLEDisconnectionAlarm"

    .line 332
    invoke-interface {p3, p4, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p4

    iput-boolean p4, p0, Lcom/senseonics/model/TransmitterStateModel;->supportForDelayBLEDisconnectionAlarm:Z

    const-string p4, "VibrationMode"

    .line 334
    invoke-interface {p3, p4, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p4

    iput-boolean p4, p0, Lcom/senseonics/model/TransmitterStateModel;->vibrateMode:Z

    .line 336
    sget p4, Lcom/senseonics/util/Utils;->morningCalibrationHourDefaultLocal:I

    sget v3, Lcom/senseonics/util/Utils;->morningCalibrationMinuteDefault:I

    invoke-static {p4, v3}, Lcom/senseonics/util/Utils;->convertHourFromLocaltoGMT(II)[I

    move-result-object p4

    .line 337
    aget v3, p4, p1

    const-string v4, "MorningCalHour"

    invoke-interface {p3, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/senseonics/model/TransmitterStateModel;->morningCalibrationTimeHour:I

    .line 338
    aget p4, p4, p2

    const-string v3, "MorningCalMinute"

    invoke-interface {p3, v3, p4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p4

    iput p4, p0, Lcom/senseonics/model/TransmitterStateModel;->morningCalibrationTimeMinute:I

    .line 340
    sget p4, Lcom/senseonics/util/Utils;->eveningCalibrationHourDefaultLocal:I

    sget v3, Lcom/senseonics/util/Utils;->eveningCalibrationMinuteDefault:I

    invoke-static {p4, v3}, Lcom/senseonics/util/Utils;->convertHourFromLocaltoGMT(II)[I

    move-result-object p4

    .line 341
    aget v3, p4, p1

    const-string v4, "EveningCalHour"

    invoke-interface {p3, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/senseonics/model/TransmitterStateModel;->eveningCalibrationTimeHour:I

    .line 342
    aget p4, p4, p2

    const-string v3, "EveningCalMinute"

    invoke-interface {p3, v3, p4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p4

    iput p4, p0, Lcom/senseonics/model/TransmitterStateModel;->eveningCalibrationTimeMinute:I

    const-string p4, "MorningCalLocalHour"

    .line 345
    invoke-interface {p3, p4, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p4

    iput p4, p0, Lcom/senseonics/model/TransmitterStateModel;->morningCalibrationLocalTimeHour:I

    const-string p4, "MorningCalLocalMinute"

    .line 346
    invoke-interface {p3, p4, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p4

    iput p4, p0, Lcom/senseonics/model/TransmitterStateModel;->morningCalibrationLocalTimeMinute:I

    const-string p4, "EveningCalLocalHour"

    .line 347
    invoke-interface {p3, p4, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p4

    iput p4, p0, Lcom/senseonics/model/TransmitterStateModel;->eveningCalibrationLocalTimeHour:I

    const-string p4, "EveningCalLocalMinute"

    .line 348
    invoke-interface {p3, p4, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p4

    iput p4, p0, Lcom/senseonics/model/TransmitterStateModel;->eveningCalibrationLocalTimeMinute:I

    const/high16 p4, 0x7fc00000    # Float.NaN

    const-string v0, "MEPSavedValue"

    .line 351
    invoke-interface {p3, v0, p4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/senseonics/model/TransmitterStateModel;->MEPSavedValue:F

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Model init: MEPSavedValue:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/senseonics/model/TransmitterStateModel;->MEPSavedValue:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "NewRegisters"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MEPSavedRefChannelMetric"

    .line 353
    invoke-interface {p3, v0, p4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/senseonics/model/TransmitterStateModel;->MEPSavedRefChannelMetric:F

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Model init: MEPSavedRefChannelMetric:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/senseonics/model/TransmitterStateModel;->MEPSavedRefChannelMetric:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MEPSavedDriftMetric"

    .line 355
    invoke-interface {p3, v0, p4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/senseonics/model/TransmitterStateModel;->MEPSavedDriftMetric:F

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Model init: MEPSavedDriftMetric:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/senseonics/model/TransmitterStateModel;->MEPSavedDriftMetric:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MEPSavedLowRefMetric"

    .line 357
    invoke-interface {p3, v0, p4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/senseonics/model/TransmitterStateModel;->MEPSavedLowRefMetric:F

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Model init: MEPSavedLowRefMetric:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/senseonics/model/TransmitterStateModel;->MEPSavedLowRefMetric:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MEPSavedSpike"

    .line 359
    invoke-interface {p3, v0, p4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p4

    iput p4, p0, Lcom/senseonics/model/TransmitterStateModel;->MEPSavedSpike:F

    .line 360
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Model init: MEPSavedSpike:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->MEPSavedSpike:F

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v3, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p4, "EEP24MSP"

    const/high16 v0, 0x3f800000    # 1.0f

    .line 361
    invoke-interface {p3, p4, v0}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p4

    iput p4, p0, Lcom/senseonics/model/TransmitterStateModel;->EEP24MSP:F

    .line 362
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Model init: EEP24MSP:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->EEP24MSP:F

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v3, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p4, 0xf

    const-string v0, "LowGlucoseAlarmRepeatIntervalDayTime"

    .line 365
    invoke-interface {p3, v0, p4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseAlarmRepeatIntervalDayTime:I

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Model init: Day Low:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseAlarmRepeatIntervalDayTime:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x1e

    const-string v4, "HighGlucoseAlarmRepeatIntervalDayTime"

    .line 368
    invoke-interface {p3, v4, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseAlarmRepeatIntervalDayTime:I

    .line 369
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Model init: Day High:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseAlarmRepeatIntervalDayTime:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "LowGlucoseAlarmRepeatIntervalNightTime"

    .line 371
    invoke-interface {p3, v4, p4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p4

    iput p4, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseAlarmRepeatIntervalNightTime:I

    .line 372
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Model init: Night Low:"

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseAlarmRepeatIntervalNightTime:I

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v3, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p4, "HighGlucoseAlarmRepeatIntervalNightTime"

    .line 374
    invoke-interface {p3, p4, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p4

    iput p4, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseAlarmRepeatIntervalNightTime:I

    .line 375
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Model init: Night High:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseAlarmRepeatIntervalNightTime:I

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v3, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    sget p4, Lcom/senseonics/util/Utils;->dayStartTimeHourDefaultLocal:I

    sget v0, Lcom/senseonics/util/Utils;->dayStartTimeMinuteDefault:I

    invoke-static {p4, v0}, Lcom/senseonics/util/Utils;->convertHourFromLocaltoGMT(II)[I

    move-result-object p4

    .line 378
    aget v0, p4, p1

    const-string v4, "DayStartTimeHour"

    invoke-interface {p3, v4, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/senseonics/model/TransmitterStateModel;->dayStartTimeHour:I

    .line 379
    aget p4, p4, p2

    const-string v0, "DayStartTimeMinute"

    invoke-interface {p3, v0, p4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p4

    iput p4, p0, Lcom/senseonics/model/TransmitterStateModel;->dayStartTimeMinute:I

    .line 380
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Model init: dayStartTimeHour:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->dayStartTimeHour:I

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v3, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Model init: dayStartTimeMinute:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->dayStartTimeMinute:I

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v3, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    sget p4, Lcom/senseonics/util/Utils;->nightStartTimeHourDefaultLocal:I

    sget v0, Lcom/senseonics/util/Utils;->nightStartTimeMinuteDefault:I

    invoke-static {p4, v0}, Lcom/senseonics/util/Utils;->convertHourFromLocaltoGMT(II)[I

    move-result-object p4

    .line 384
    aget v0, p4, p1

    const-string v4, "NightStartTimeHour"

    invoke-interface {p3, v4, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/senseonics/model/TransmitterStateModel;->nightStartTimeHour:I

    .line 385
    aget p2, p4, p2

    const-string p4, "NightStartTimeMinute"

    invoke-interface {p3, p4, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->nightStartTimeMinute:I

    .line 386
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Model init: nightStartTimeHour:"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p0, Lcom/senseonics/model/TransmitterStateModel;->nightStartTimeHour:I

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Model init: nightStartTimeMinute:"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p0, Lcom/senseonics/model/TransmitterStateModel;->nightStartTimeMinute:I

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "LastGlucoseSyncedMaxRecordTimestamp"

    .line 389
    invoke-interface {p3, p2, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/senseonics/model/TransmitterStateModel;->lastGlucoseSyncedMaxRecordTimestamp:J

    .line 391
    new-instance p2, Lcom/senseonics/util/Range;

    const-string p4, "SensorGlucoseRecordRangeFrom"

    invoke-interface {p3, p4, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p4

    const-string v0, "SensorGlucoseRecordRangeTo"

    invoke-interface {p3, v0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p2, p4, v0}, Lcom/senseonics/util/Range;-><init>(II)V

    iput-object p2, p0, Lcom/senseonics/model/TransmitterStateModel;->sensorGlucoseRecordRange:Lcom/senseonics/util/Range;

    .line 392
    new-instance p2, Lcom/senseonics/util/Range;

    const-string p4, "AlertRecordRangeFrom"

    invoke-interface {p3, p4, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p4

    const-string v0, "AlertRecordRangeTo"

    invoke-interface {p3, v0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p2, p4, v0}, Lcom/senseonics/util/Range;-><init>(II)V

    iput-object p2, p0, Lcom/senseonics/model/TransmitterStateModel;->alertRecordRange:Lcom/senseonics/util/Range;

    .line 393
    new-instance p2, Lcom/senseonics/util/Range;

    const-string p4, "BloodGlucoseRecordRangeFrom"

    invoke-interface {p3, p4, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p4

    const-string v0, "BloodGlucoseRecordRangeTo"

    invoke-interface {p3, v0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p2, p4, v0}, Lcom/senseonics/util/Range;-><init>(II)V

    iput-object p2, p0, Lcom/senseonics/model/TransmitterStateModel;->bloodGlucoseRecordRange:Lcom/senseonics/util/Range;

    const-string p2, "MaxSyncedSensorRecord"

    .line 395
    invoke-interface {p3, p2, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->maxSyncedSensorRecord:I

    const-string p2, "MaxSyncedAlertRecord"

    .line 396
    invoke-interface {p3, p2, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->maxSyncedAlertRecord:I

    const-string p2, "MaxSyncedBloodGlucoseRecord"

    .line 397
    invoke-interface {p3, p2, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->maxSyncedBloodGlucoseRecord:I

    .line 400
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue1:I

    .line 401
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue2:I

    .line 402
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue3:I

    .line 403
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue4:I

    .line 404
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue5:I

    .line 405
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue6:I

    .line 406
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue7:I

    .line 407
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue8:I

    const-string p2, "LastReadTransmitterDatetimeTimestamp"

    .line 409
    invoke-interface {p3, p2, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/senseonics/model/TransmitterStateModel;->lastReadTransmitterDatetimeTimestamp:J

    const-string p2, "KeepAliveAlertActive"

    .line 411
    invoke-interface {p3, p2, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/senseonics/model/TransmitterStateModel;->keepAliveAlertActive:Z

    const-string p2, "IsGlucoseStale"

    .line 412
    invoke-interface {p3, p2, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/senseonics/model/TransmitterStateModel;->isGlucoseStale:Z

    const-string p2, "SensorGlucoseAlertStatus"

    .line 413
    invoke-virtual {p5, p2}, Lcom/senseonics/util/PreferenceObjectSaverRetriver;->getSensorGlucoseAlertStatus(Ljava/lang/String;)[I

    move-result-object p2

    iput-object p2, p0, Lcom/senseonics/model/TransmitterStateModel;->sensorGlucoseAlertStatus:[I

    const-string p2, "AtccalCrcRegisterExists"

    .line 414
    invoke-interface {p3, p2, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/senseonics/model/TransmitterStateModel;->atccalCrcRegisterExists:Z

    const-string p2, "AtccalSramResultRegisterExists"

    .line 415
    invoke-interface {p3, p2, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/senseonics/model/TransmitterStateModel;->atccalSramResultRegisterExists:Z

    const-string p2, "IsOneCalPhaseRegisterExists"

    .line 417
    invoke-interface {p3, p2, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/senseonics/model/TransmitterStateModel;->isOneCalPhaseRegisterExists:Z

    const-string p2, "IsOneCalPhaseValue"

    const/16 p4, 0xfe

    .line 418
    invoke-interface {p3, p2, p4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->isOneCalPhaseValue:I

    const-string p2, "MmaFeatures"

    .line 420
    invoke-interface {p3, p2, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->mmaFeatures:I

    .line 421
    sput p1, Lcom/senseonics/model/TransmitterStateModel;->mmaFeatures_Static:I

    return-void
.end method

.method static synthetic access$000(Lcom/senseonics/model/TransmitterStateModel;)Landroid/os/CountDownTimer;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/senseonics/model/TransmitterStateModel;->countDownTimer:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method static synthetic access$002(Lcom/senseonics/model/TransmitterStateModel;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->countDownTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/senseonics/model/TransmitterStateModel;)Lde/greenrobot/event/EventBus;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    return-object p0
.end method

.method private fireChangeEvent()V
    .locals 2

    .line 2178
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/model/ModelChangedEvent;

    invoke-direct {v1, p0}, Lcom/senseonics/model/ModelChangedEvent;-><init>(Lcom/senseonics/model/TransmitterStateModel;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->postSticky(Ljava/lang/Object;)V

    return-void
.end method

.method private fireGlucoseSettingsChangedEvent()V
    .locals 2

    .line 2189
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/events/GlucoseSettingsChangedEvent;

    invoke-direct {v1}, Lcom/senseonics/events/GlucoseSettingsChangedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private fireMessageCodeChangedEvent()V
    .locals 2

    .line 2193
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/events/MessageCodeChangedEvent;

    invoke-direct {v1}, Lcom/senseonics/events/MessageCodeChangedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->postSticky(Ljava/lang/Object;)V

    return-void
.end method

.method private fireRefreshGraphEvent()V
    .locals 2

    .line 2185
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/events/ModelChangedRefreshGraphEvent;

    invoke-direct {v1}, Lcom/senseonics/events/ModelChangedRefreshGraphEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->postSticky(Ljava/lang/Object;)V

    return-void
.end method

.method public static getCommunicationProtocolVersion_Static()F
    .locals 1

    .line 1395
    sget-object v0, Lcom/senseonics/model/TransmitterStateModel;->communicationProtocolVersion_Static:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1397
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getMmaFeatures_Static()I
    .locals 1

    .line 2164
    sget v0, Lcom/senseonics/model/TransmitterStateModel;->mmaFeatures_Static:I

    return v0
.end method

.method private getTransmitterVersionExtensionNumber()Ljava/lang/String;
    .locals 1

    .line 860
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterVersionExtensionNumber:Ljava/lang/String;

    return-object v0
.end method

.method private getTransmitterVersionNumber()Ljava/lang/String;
    .locals 1

    .line 856
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterVersionNumber:Ljava/lang/String;

    return-object v0
.end method

.method public static setCommunicationProtocolVersion_Static(Ljava/lang/String;)V
    .locals 0

    .line 1406
    sput-object p0, Lcom/senseonics/model/TransmitterStateModel;->communicationProtocolVersion_Static:Ljava/lang/String;

    return-void
.end method

.method private updateTransmitterAddressInPreference()V
    .locals 3

    .line 590
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterAddress:Ljava/lang/String;

    const-string v1, "TransmitterAddress"

    if-nez v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 593
    :cond_0
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v2, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterAddress:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return-void
.end method

.method private updateTransmitterNameInPreference()V
    .locals 3

    .line 582
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterName:Ljava/lang/String;

    const-string v1, "TransmitterName"

    if-nez v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 585
    :cond_0
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v2, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return-void
.end method


# virtual methods
.method public adjustLastReadDateTimeWhenSendingReadCommand()V
    .locals 7

    .line 425
    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->getLastReadTransmitterDatetimeTimestamp()J

    move-result-wide v0

    .line 426
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-gez v6, :cond_0

    .line 432
    invoke-virtual {p0, v4, v5}, Lcom/senseonics/model/TransmitterStateModel;->setLastReadTransmitterDatetimeTimestamp(J)V

    goto :goto_0

    .line 434
    :cond_0
    sget v4, Lcom/senseonics/graph/util/GraphUtils;->SECOND:I

    mul-int/lit8 v4, v4, 0x5

    int-to-long v4, v4

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 436
    invoke-virtual {p0, v2, v3}, Lcom/senseonics/model/TransmitterStateModel;->setLastReadTransmitterDatetimeTimestamp(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public canCurrentAppAlertCodeBeReasonForBlinded()Z
    .locals 1

    .line 2067
    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentAppAlertCodeFromState()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/util/TransmitterMessageCode;->canBlindGlucose()Z

    move-result v0

    return v0
.end method

.method public canCurrentMessageCodeBeReasonForBlinded()Z
    .locals 1

    .line 1211
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->currentMessageCode:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v0}, Lcom/senseonics/util/TransmitterMessageCode;->canBlindGlucose()Z

    move-result v0

    return v0
.end method

.method public cancelOngoingCalibration()V
    .locals 4

    .line 677
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-wide/16 v1, 0x0

    const-string v3, "calibrationDateTime"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 678
    iput-wide v1, p0, Lcom/senseonics/model/TransmitterStateModel;->currentCountdown:J

    .line 679
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->countDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 680
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 682
    :cond_0
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    return-void
.end method

.method public checkIfNonGlucoseShowingPhase()Z
    .locals 3

    .line 1192
    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentCalibrationPhase()Lcom/senseonics/util/Utils$CAL_PHASE;

    move-result-object v0

    sget-object v1, Lcom/senseonics/util/Utils$CAL_PHASE;->WARM_UP:Lcom/senseonics/util/Utils$CAL_PHASE;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    .line 1193
    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentCalibrationPhase()Lcom/senseonics/util/Utils$CAL_PHASE;

    move-result-object v0

    sget-object v1, Lcom/senseonics/util/Utils$CAL_PHASE;->INITIALIZATION:Lcom/senseonics/util/Utils$CAL_PHASE;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->getCalibrationsMadeInThisPhase()I

    move-result v0

    if-gt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v2
.end method

.method public checkIfStaleData()Z
    .locals 4

    .line 2049
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->getGlucoseTimestamp()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 2050
    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->getSamplingIntervalInSeconds()I

    move-result v2

    add-int/lit8 v2, v2, 0x3c

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public fireReadyForCalibrationChangedEvent()V
    .locals 2

    .line 2197
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/model/ReadyForCalibrationChangedEvent;

    invoke-direct {v1}, Lcom/senseonics/model/ReadyForCalibrationChangedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public fireSignalStrengthChangedEvent()V
    .locals 2

    .line 2201
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/events/SignalStrengthChangedEvent;

    invoke-direct {v1}, Lcom/senseonics/events/SignalStrengthChangedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public getAlertRecordRange()Lcom/senseonics/util/Range;
    .locals 3

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " PrepareSync"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Model alertRecordRange:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/senseonics/model/TransmitterStateModel;->alertRecordRange:Lcom/senseonics/util/Range;

    invoke-virtual {v2}, Lcom/senseonics/util/Range;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->alertRecordRange:Lcom/senseonics/util/Range;

    return-object v0
.end method

.method public getAlgorithmParameterFormatVersion()I
    .locals 1

    .line 1372
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->algorithmParameterFormatVersion:I

    return v0
.end method

.method public getBackgroundColorForGlucose(I)I
    .locals 1

    .line 2267
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseAlarmThreshold:I

    if-lt p1, v0, :cond_3

    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseAlarmThreshold:I

    if-le p1, v0, :cond_0

    goto :goto_1

    .line 2269
    :cond_0
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseTarget:I

    if-lt p1, v0, :cond_2

    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseTarget:I

    if-le p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const p1, 0x7f06006c

    return p1

    :cond_2
    :goto_0
    const p1, 0x7f060075

    return p1

    :cond_3
    :goto_1
    const p1, 0x7f060071

    return p1
.end method

.method public getBatteryLevel()Lcom/senseonics/model/BATTERY_LEVEL;
    .locals 1

    .line 1133
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->batteryLevel:Lcom/senseonics/model/BATTERY_LEVEL;

    return-object v0
.end method

.method public getBatteryLife()Ljava/lang/String;
    .locals 2

    .line 1144
    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->getBatteryLevel()Lcom/senseonics/model/BATTERY_LEVEL;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/senseonics/util/Utils;->getBatteryPercentStringForLevel(Lcom/senseonics/model/BATTERY_LEVEL;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBatteryVoltage()F
    .locals 1

    .line 1123
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->batteryVoltage:F

    return v0
.end method

.method public getBloodGlucoseRecordRange()Lcom/senseonics/util/Range;
    .locals 3

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " PrepareSync"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Model bloodGlucoseRecordRange:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/senseonics/model/TransmitterStateModel;->bloodGlucoseRecordRange:Lcom/senseonics/util/Range;

    invoke-virtual {v2}, Lcom/senseonics/util/Range;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->bloodGlucoseRecordRange:Lcom/senseonics/util/Range;

    return-object v0
.end method

.method public getCalibrationDurationMinutes()I
    .locals 2

    .line 1416
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->samplingIntervalInSeconds:I

    div-int/lit8 v0, v0, 0x3c

    mul-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public getCalibrationDurationSeconds()I
    .locals 1

    .line 1427
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->samplingIntervalInSeconds:I

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getCalibrationsMadeInThisPhase()I
    .locals 1

    .line 1337
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->calibrationsMadeInThisPhase:I

    return v0
.end method

.method public getCalibrationsRemaining()I
    .locals 2

    .line 1341
    sget v0, Lcom/senseonics/model/TransmitterStateModel;->CALIBRATIONS_REQUIRED_DURING_INITIALIZATION_PHASE:I

    iget v1, p0, Lcom/senseonics/model/TransmitterStateModel;->calibrationsMadeInThisPhase:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getCommunicationProtocolVersion()F
    .locals 1

    .line 1383
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->communicationProtocolVersion:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1385
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCurrentAppAlertCodeFromState()Lcom/senseonics/util/TransmitterMessageCode;
    .locals 2

    .line 2054
    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode;->NoAlarmActive:Lcom/senseonics/util/TransmitterMessageCode;

    .line 2056
    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->getKeepAliveAlertActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2057
    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode;->TransmitterKeepAliveNotReceived:Lcom/senseonics/util/TransmitterMessageCode;

    .line 2059
    :cond_0
    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->getIsGlucoseStale()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2060
    sget-object v0, Lcom/senseonics/util/TransmitterMessageCode;->TransmitterGlucoseStale:Lcom/senseonics/util/TransmitterMessageCode;

    :cond_1
    return-object v0
.end method

.method public getCurrentCalibrationPhase()Lcom/senseonics/util/Utils$CAL_PHASE;
    .locals 1

    .line 1240
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->currentCalibrationPhase:Lcom/senseonics/util/Utils$CAL_PHASE;

    return-object v0
.end method

.method public getCurrentCountdown()J
    .locals 2

    .line 1345
    iget-wide v0, p0, Lcom/senseonics/model/TransmitterStateModel;->currentCountdown:J

    return-wide v0
.end method

.method public getCurrentMessageCode()Lcom/senseonics/util/TransmitterMessageCode;
    .locals 1

    .line 1207
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->currentMessageCode:Lcom/senseonics/util/TransmitterMessageCode;

    return-object v0
.end method

.method public getCurrentPhase()Ljava/lang/String;
    .locals 3

    .line 1255
    sget-object v0, Lcom/senseonics/model/TransmitterStateModel$2;->$SwitchMap$com$senseonics$util$Utils$CAL_PHASE:[I

    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentCalibrationPhase()Lcom/senseonics/util/Utils$CAL_PHASE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/senseonics/util/Utils$CAL_PHASE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1280
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->context:Landroid/content/Context;

    const v1, 0x7f1101e2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1272
    :cond_0
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->context:Landroid/content/Context;

    const v1, 0x7f11015e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1260
    :cond_1
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->context:Landroid/content/Context;

    const v2, 0x7f1100a8

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1262
    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->getIsOneCalPhaseRegisterExists()Z

    move-result v2

    invoke-static {v2}, Lcom/senseonics/util/AccountConfigurations;->enableOneCalSwitch(Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1263
    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->getIsOneCalPhaseValue()I

    move-result v2

    if-nez v2, :cond_2

    .line 1264
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->context:Landroid/content/Context;

    const v1, 0x7f1100aa

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1265
    :cond_2
    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->getIsOneCalPhaseValue()I

    move-result v2

    if-ne v2, v1, :cond_4

    .line 1266
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->context:Landroid/content/Context;

    const v1, 0x7f1100a9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1257
    :cond_3
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->context:Landroid/content/Context;

    const v1, 0x7f110325

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_4
    :goto_0
    return-object v0
.end method

.method public getCurrentPhaseNotTranslated()Ljava/lang/String;
    .locals 2

    .line 1290
    sget-object v0, Lcom/senseonics/model/TransmitterStateModel$2;->$SwitchMap$com$senseonics$util$Utils$CAL_PHASE:[I

    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentCalibrationPhase()Lcom/senseonics/util/Utils$CAL_PHASE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/senseonics/util/Utils$CAL_PHASE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, "Not Available"

    goto :goto_0

    :pswitch_0
    const-string v0, "Dropout"

    goto :goto_0

    :pswitch_1
    const-string v0, "Debug/Test"

    goto :goto_0

    :pswitch_2
    const-string v0, "Unknown"

    goto :goto_0

    :pswitch_3
    const-string v0, "Suspicious Fingerstick"

    goto :goto_0

    :pswitch_4
    const-string v0, "Initialization"

    goto :goto_0

    .line 1297
    :pswitch_5
    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->getIsOneCalPhaseRegisterExists()Z

    move-result v0

    invoke-static {v0}, Lcom/senseonics/util/AccountConfigurations;->enableOneCalSwitch(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1298
    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->getIsOneCalPhaseValue()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "2 Daily Calibrations"

    goto :goto_0

    .line 1300
    :cond_0
    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->getIsOneCalPhaseValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "1 Daily Calibration"

    goto :goto_0

    :cond_1
    const-string v0, "Daily Calibration"

    goto :goto_0

    :pswitch_6
    const-string v0, "Warm Up"

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDateTimeCalendarFromPushNotificationResponse([I)Ljava/util/Calendar;
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x1

    .line 2209
    aget v3, p1, v2

    const/4 v4, 0x0

    aput v3, v1, v4

    aget v3, p1, v0

    aput v3, v1, v2

    .line 2210
    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->calculateDateFromBytes([I)[I

    move-result-object v1

    new-array v0, v0, [I

    const/4 v3, 0x3

    .line 2211
    aget v3, p1, v3

    aput v3, v0, v4

    const/4 v3, 0x4

    aget p1, p1, v3

    aput p1, v0, v2

    .line 2212
    invoke-static {v0}, Lcom/senseonics/bluetoothle/BinaryOperations;->calculateTimeFromBytes([I)[I

    move-result-object p1

    .line 2214
    invoke-static {v1, p1}, Lcom/senseonics/util/Utils;->getGMTCalendarFrom([I[I)Ljava/util/Calendar;

    move-result-object p1

    return-object p1
.end method

.method public getDayStartTimeHour()I
    .locals 1

    .line 1900
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->dayStartTimeHour:I

    return v0
.end method

.method public getDayStartTimeMinute()I
    .locals 1

    .line 1910
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->dayStartTimeMinute:I

    return v0
.end method

.method public getDelayBLEDisconnectionAlarm()I
    .locals 1

    .line 1461
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->delayBLEDisconnectionAlarm:I

    return v0
.end method

.method public getEEP24MSP()F
    .locals 1

    .line 1889
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->EEP24MSP:F

    return v0
.end method

.method public getEveningCalibrationLocalTimeHour()I
    .locals 1

    .line 1820
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->eveningCalibrationLocalTimeHour:I

    return v0
.end method

.method public getEveningCalibrationLocalTimeMinute()I
    .locals 1

    .line 1829
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->eveningCalibrationLocalTimeMinute:I

    return v0
.end method

.method public getEveningCalibrationTimeHour()I
    .locals 1

    .line 1784
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->eveningCalibrationTimeHour:I

    return v0
.end method

.method public getEveningCalibrationTimeMinute()I
    .locals 1

    .line 1795
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->eveningCalibrationTimeMinute:I

    return v0
.end method

.method public getFormattedTransmitterVersionNumber()Ljava/lang/String;
    .locals 4

    .line 842
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterVersionExtensionNumber()Ljava/lang/String;

    move-result-object v0

    .line 843
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterVersionNumber()Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v2, "."

    .line 847
    invoke-static {v1, v2}, Lcom/senseonics/util/Utils;->countOccurrancesInString(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 848
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "^0+"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method public getGlucoseLevel()I
    .locals 1

    .line 1167
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->glucoseLevel:I

    return v0
.end method

.method public getGlucoseLevelAlertText(I)I
    .locals 2

    .line 2232
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseAlarmThreshold:I

    if-le p1, v0, :cond_0

    const p1, 0x7f110126

    return p1

    .line 2234
    :cond_0
    iget v1, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseAlarmThreshold:I

    if-ge p1, v1, :cond_1

    const p1, 0x7f11012a

    return p1

    .line 2236
    :cond_1
    iget v1, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseTarget:I

    if-le p1, v1, :cond_2

    if-gt p1, v0, :cond_2

    const p1, 0x7f110127

    return p1

    .line 2239
    :cond_2
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseAlarmThreshold:I

    if-lt p1, v0, :cond_3

    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseTarget:I

    if-ge p1, v0, :cond_3

    const p1, 0x7f11012b

    return p1

    .line 2242
    :cond_3
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseTarget:I

    if-gt p1, v0, :cond_4

    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseTarget:I

    if-lt p1, v0, :cond_4

    const p1, 0x7f110131

    return p1

    :cond_4
    const/4 p1, -0x1

    return p1
.end method

.method public getGlucoseTimestamp()J
    .locals 2

    .line 1153
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->glucoseTimestamp:Ljava/util/Calendar;

    if-eqz v0, :cond_0

    .line 1154
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getGlucoseTrendDirection()Lcom/senseonics/util/Utils$ARROW_TYPE;
    .locals 1

    .line 1184
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->glucoseTrendDirection:Lcom/senseonics/util/Utils$ARROW_TYPE;

    return-object v0
.end method

.method public getHighGlucoseAlarmRepeatIntervalDayTime()I
    .locals 1

    .line 1940
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseAlarmRepeatIntervalDayTime:I

    return v0
.end method

.method public getHighGlucoseAlarmRepeatIntervalNightTime()I
    .locals 1

    .line 1951
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseAlarmRepeatIntervalNightTime:I

    return v0
.end method

.method public getHighGlucoseAlarmThreshold()I
    .locals 1

    .line 1585
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseAlarmThreshold:I

    return v0
.end method

.method public getHighGlucoseAlertThreshold()I
    .locals 1

    .line 1589
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseAlertThreshold:I

    return v0
.end method

.method public getHighGlucoseTarget()I
    .locals 1

    .line 1539
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseTarget:I

    return v0
.end method

.method public getHoursLeftForWarmupPhase()I
    .locals 4

    .line 1438
    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentCalibrationPhase()Lcom/senseonics/util/Utils$CAL_PHASE;

    move-result-object v0

    sget-object v1, Lcom/senseonics/util/Utils$CAL_PHASE;->WARM_UP:Lcom/senseonics/util/Utils$CAL_PHASE;

    if-ne v0, v1, :cond_0

    .line 1439
    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->getSensorInsertionDateAndTime()Ljava/util/Calendar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1441
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1442
    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->getSensorInsertionDateAndTime()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v1, 0xb

    const/16 v2, 0x18

    .line 1443
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 1444
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1445
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-ltz v0, :cond_0

    const-wide/16 v0, 0x3e8

    .line 1447
    div-long/2addr v2, v0

    const-wide/16 v0, 0x3c

    div-long/2addr v2, v0

    long-to-int v0, v2

    div-int/lit8 v0, v0, 0x3c

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getHysteresisHighGlocosePercent()I
    .locals 1

    .line 532
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->hysteresisHighGlocosePercent:I

    return v0
.end method

.method public getHysteresisHighPredictiveGlocosePercent()I
    .locals 1

    .line 550
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->hysteresisHighPredictiveGlocosePercent:I

    return v0
.end method

.method public getHysteresisLowGlucoseValueMgDl()I
    .locals 1

    .line 541
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->hysteresisLowGlucoseValueMgDl:I

    return v0
.end method

.method public getHysteresisLowPredictiveGlucoseValueMgDl()I
    .locals 1

    .line 559
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->hysteresisLowPredictiveGlucoseValueMgDl:I

    return v0
.end method

.method public getIsGlucoseStale()Z
    .locals 1

    .line 2039
    iget-boolean v0, p0, Lcom/senseonics/model/TransmitterStateModel;->isGlucoseStale:Z

    return v0
.end method

.method public getIsOneCalPhaseRegisterExists()Z
    .locals 1

    .line 2146
    iget-boolean v0, p0, Lcom/senseonics/model/TransmitterStateModel;->isOneCalPhaseRegisterExists:Z

    return v0
.end method

.method public getIsOneCalPhaseValue()I
    .locals 1

    .line 2155
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->isOneCalPhaseValue:I

    return v0
.end method

.method public getKeepAliveAlertActive()Z
    .locals 1

    .line 2029
    iget-boolean v0, p0, Lcom/senseonics/model/TransmitterStateModel;->keepAliveAlertActive:Z

    return v0
.end method

.method public getLastGlucoseSyncedMaxRecordTimestamp()J
    .locals 2

    .line 453
    iget-wide v0, p0, Lcom/senseonics/model/TransmitterStateModel;->lastGlucoseSyncedMaxRecordTimestamp:J

    return-wide v0
.end method

.method public getLastReadTransmitterDatetimeTimestamp()J
    .locals 2

    .line 444
    iget-wide v0, p0, Lcom/senseonics/model/TransmitterStateModel;->lastReadTransmitterDatetimeTimestamp:J

    return-wide v0
.end method

.method public getLinkedSensorId()Ljava/lang/String;
    .locals 1

    .line 1504
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->linkedSensorId:Ljava/lang/String;

    return-object v0
.end method

.method public getLowGlucoseAlarmRepeatIntervalDayTime()I
    .locals 1

    .line 1961
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseAlarmRepeatIntervalDayTime:I

    return v0
.end method

.method public getLowGlucoseAlarmRepeatIntervalNightTime()I
    .locals 1

    .line 1972
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseAlarmRepeatIntervalNightTime:I

    return v0
.end method

.method public getLowGlucoseAlarmThreshold()I
    .locals 1

    .line 1616
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseAlarmThreshold:I

    return v0
.end method

.method public getLowGlucoseAlertThreshold()I
    .locals 1

    .line 1593
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseAlertThreshold:I

    return v0
.end method

.method public getLowGlucoseTarget()I
    .locals 1

    .line 1562
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseTarget:I

    return v0
.end method

.method public getMEPSavedDriftMetric()F
    .locals 1

    .line 1859
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->MEPSavedDriftMetric:F

    return v0
.end method

.method public getMEPSavedLowRefMetric()F
    .locals 1

    .line 1869
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->MEPSavedLowRefMetric:F

    return v0
.end method

.method public getMEPSavedRefChannelMetric()F
    .locals 1

    .line 1849
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->MEPSavedRefChannelMetric:F

    return v0
.end method

.method public getMEPSavedSpike()F
    .locals 1

    .line 1879
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->MEPSavedSpike:F

    return v0
.end method

.method public getMEPSavedValue()F
    .locals 1

    .line 1839
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->MEPSavedValue:F

    return v0
.end method

.method public getMaxCalibrationThreshold()I
    .locals 1

    .line 1018
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->maxCalibrationThreshold:I

    return v0
.end method

.method public getMaxGlucoseRecordsToSync()I
    .locals 2

    .line 1431
    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->getSamplingIntervalInSeconds()I

    move-result v0

    const/16 v1, 0xe10

    div-int/2addr v1, v0

    .line 1432
    sget v0, Lcom/senseonics/util/Utils;->DAYS_TO_FETCH_FOR_SYNC:I

    mul-int/lit8 v0, v0, 0x18

    mul-int/2addr v0, v1

    return v0
.end method

.method public getMaxSyncedAlertRecord()I
    .locals 1

    .line 505
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->maxSyncedAlertRecord:I

    return v0
.end method

.method public getMaxSyncedBloodGlucoseRecord()I
    .locals 1

    .line 515
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->maxSyncedBloodGlucoseRecord:I

    return v0
.end method

.method public getMaxSyncedSensorRecord()I
    .locals 1

    .line 495
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->maxSyncedSensorRecord:I

    return v0
.end method

.method public getMinCalibrationThreshold()I
    .locals 1

    .line 1009
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->minCalibrationThreshold:I

    return v0
.end method

.method public getMinutesAfterNextCalibrationTime()I
    .locals 1

    .line 993
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->minutesAfterNextCalibrationTime:I

    return v0
.end method

.method public getMinutesBeforeNextCalibrationTime()I
    .locals 1

    .line 985
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->minutesBeforeNextCalibrationTime:I

    return v0
.end method

.method public getMinutesRemainingUntilCalibrationAllowed()I
    .locals 1

    .line 1001
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->minutesRemainingUntilCalibrationAllowed:I

    return v0
.end method

.method public getMmaFeatures()I
    .locals 1

    .line 2168
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->mmaFeatures:I

    return v0
.end method

.method public getMorningCalibrationLocalTimeHour()I
    .locals 1

    .line 1802
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->morningCalibrationLocalTimeHour:I

    return v0
.end method

.method public getMorningCalibrationLocalTimeMinute()I
    .locals 1

    .line 1811
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->morningCalibrationLocalTimeMinute:I

    return v0
.end method

.method public getMorningCalibrationTimeHour()I
    .locals 1

    .line 1762
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->morningCalibrationTimeHour:I

    return v0
.end method

.method public getMorningCalibrationTimeMinute()I
    .locals 1

    .line 1773
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->morningCalibrationTimeMinute:I

    return v0
.end method

.method public getMostRecentGlucoseDateTime()Ljava/util/Calendar;
    .locals 5

    .line 2099
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->mostRecentGlucoseDateTime:Ljava/util/Calendar;

    if-nez v0, :cond_1

    .line 2100
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x0

    const-string v3, "MostRecentGlucoseDateTime"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2104
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2105
    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_1
    return-object v0
.end method

.method public getMostRecentGlucoseRegisterValue()I
    .locals 1

    .line 1175
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->mostRecentGlucoseRegisterValue:I

    return v0
.end method

.method public getNextScheduledCalibration()Ljava/util/Calendar;
    .locals 1

    .line 958
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->nextScheduledCalibration:Ljava/util/Calendar;

    return-object v0
.end method

.method public getNightStartTimeHour()I
    .locals 1

    .line 1920
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->nightStartTimeHour:I

    return v0
.end method

.method public getNightStartTimeMinute()I
    .locals 1

    .line 1930
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->nightStartTimeMinute:I

    return v0
.end method

.method public getNotificationIconForGlucose(I)I
    .locals 2

    .line 2258
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseAlarmThreshold:I

    const v1, 0x7f080067

    if-lt p1, v0, :cond_2

    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseAlarmThreshold:I

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 2260
    :cond_0
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseTarget:I

    if-lt p1, v0, :cond_2

    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseTarget:I

    if-le p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const p1, 0x7f0801b8

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public getPredictiveFallingRateAlertMinuteInterval()I
    .locals 1

    .line 1671
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->predictiveFallingRateAlertMinuteInterval:I

    return v0
.end method

.method public getPredictiveRisingRateAlertMinuteInterval()I
    .locals 1

    .line 1682
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->predictiveRisingRateAlertMinuteInterval:I

    return v0
.end method

.method public getRateAlertFallingThreshold()F
    .locals 1

    .line 1693
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->rateAlertFallingThreshold:F

    return v0
.end method

.method public getRateAlertRisingThreshold()F
    .locals 1

    .line 1704
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->rateAlertRisingThreshold:F

    return v0
.end method

.method public getRawDataValues()[I
    .locals 3

    .line 1985
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue2:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue3:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue4:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue5:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue6:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue7:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue8:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RawValue"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 1986
    iget v1, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue1:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue2:I

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue3:I

    const/4 v2, 0x2

    aput v1, v0, v2

    iget v1, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue4:I

    const/4 v2, 0x3

    aput v1, v0, v2

    iget v1, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue5:I

    const/4 v2, 0x4

    aput v1, v0, v2

    iget v1, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue6:I

    const/4 v2, 0x5

    aput v1, v0, v2

    iget v1, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue7:I

    const/4 v2, 0x6

    aput v1, v0, v2

    iget v1, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue8:I

    const/4 v2, 0x7

    aput v1, v0, v2

    return-object v0
.end method

.method public getReadyForCalibrationState()Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;
    .locals 1

    .line 950
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->readyForCalibrationState:I

    invoke-static {v0}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->fromId(I)Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    move-result-object v0

    return-object v0
.end method

.method public getSamplingIntervalInMinutes()I
    .locals 2

    .line 1362
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->samplingIntervalInSeconds:I

    div-int/lit8 v0, v0, 0x3c

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public getSamplingIntervalInSeconds()I
    .locals 1

    .line 1353
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->samplingIntervalInSeconds:I

    return v0
.end method

.method public getSensorGlucoseAlertStatus()[I
    .locals 3

    .line 2071
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sensorGlucoseAlertStatus:[I

    sget v1, Lcom/senseonics/model/ReadSensorGlucoseAlertAndStatusParsedResponse;->STATUS_FLAGS_COUNT:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/senseonics/util/Utils;->expandIntArrayToSize([III)[I

    move-result-object v0

    return-object v0
.end method

.method public getSensorGlucoseRecordRange()Lcom/senseonics/util/Range;
    .locals 3

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " PrepareSync"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Model sensorGlucoseRecordRange:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/senseonics/model/TransmitterStateModel;->sensorGlucoseRecordRange:Lcom/senseonics/util/Range;

    invoke-virtual {v2}, Lcom/senseonics/util/Range;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sensorGlucoseRecordRange:Lcom/senseonics/util/Range;

    return-object v0
.end method

.method public getSensorInsertionDateAndTime()Ljava/util/Calendar;
    .locals 5

    .line 720
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sensorInsertionDateAndTime:Ljava/util/Calendar;

    if-nez v0, :cond_1

    .line 721
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x0

    const-string v3, "SensorInsertionDateTime"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 725
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 726
    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_1
    return-object v0
.end method

.method public getSignalStrength()Lcom/senseonics/model/SIGNAL_STRENGTH;
    .locals 1

    .line 1113
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->signalStrength:Lcom/senseonics/model/SIGNAL_STRENGTH;

    return-object v0
.end method

.method public getSignalStrengthIntValue()I
    .locals 1

    .line 1088
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->signalStrengthIntValue:I

    return v0
.end method

.method public getSignalStrengthRawIntValue()I
    .locals 1

    .line 1105
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->signalStrengthRawIntValue:I

    return v0
.end method

.method public getSignalStrengthRawRegisterExists()Z
    .locals 1

    .line 1096
    iget-boolean v0, p0, Lcom/senseonics/model/TransmitterStateModel;->signalStrengthRawRegisterExists:Z

    return v0
.end method

.method public getStartCalibrationPhaseDateAndTime()Ljava/util/Calendar;
    .locals 5

    .line 885
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->startCalibrationPhaseDateAndTime:Ljava/util/Calendar;

    if-nez v0, :cond_1

    .line 886
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x0

    const-string v3, "CalibrationStartDate"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 890
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 891
    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_1
    return-object v0
.end method

.method public getTextColorForGlucose(I)I
    .locals 1

    .line 2251
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseAlarmThreshold:I

    if-lt p1, v0, :cond_1

    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseAlarmThreshold:I

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x7f06006e

    return p1

    :cond_1
    :goto_0
    const p1, 0x7f060074

    return p1
.end method

.method public getTransmitter()Lcom/senseonics/bluetoothle/Transmitter;
    .locals 1

    .line 780
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitter:Lcom/senseonics/bluetoothle/Transmitter;

    return-object v0
.end method

.method public getTransmitterAddress()Ljava/lang/String;
    .locals 1

    .line 793
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getTransmitterConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;
    .locals 1

    .line 598
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterConnectionState:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    return-object v0
.end method

.method public getTransmitterModelNumber()Ljava/lang/String;
    .locals 1

    .line 813
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterModelNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getTransmitterName()Ljava/lang/String;
    .locals 1

    .line 784
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterName:Ljava/lang/String;

    return-object v0
.end method

.method public getTransmitterSerialNumber()Ljava/lang/String;
    .locals 1

    .line 802
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterSerialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getTransmitterTime()J
    .locals 2

    .line 876
    iget-wide v0, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterTime:J

    return-wide v0
.end method

.method public getUnLinkedSensorId()Ljava/lang/String;
    .locals 1

    .line 1515
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->unLinkedSensorId:Ljava/lang/String;

    return-object v0
.end method

.method public getlastCalibrationDateAndTime()Ljava/util/Calendar;
    .locals 5

    .line 935
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->lastCalibrationDateAndTime:Ljava/util/Calendar;

    if-nez v0, :cond_1

    .line 936
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x0

    const-string v3, "LastCalibration"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 940
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 941
    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_1
    return-object v0
.end method

.method public hasSupportForDelayBLEDisconnectionAlarm()Z
    .locals 1

    .line 1472
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->showDisconnectDelaySetting()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1476
    :cond_0
    iget-boolean v0, p0, Lcom/senseonics/model/TransmitterStateModel;->supportForDelayBLEDisconnectionAlarm:Z

    return v0
.end method

.method public hasSupportForHighGluAlarmPredRateHighLowSettings()Z
    .locals 1

    .line 1748
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->enableMoreGlucoseSetting()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1751
    :cond_0
    iget-boolean v0, p0, Lcom/senseonics/model/TransmitterStateModel;->supportForHighGluAlarmPredRateHighLowSettings:Z

    return v0
.end method

.method public isAtccalCrcRegisterExists()Z
    .locals 1

    .line 2085
    iget-boolean v0, p0, Lcom/senseonics/model/TransmitterStateModel;->atccalCrcRegisterExists:Z

    return v0
.end method

.method public isAtccalSramResultRegisterExists()Z
    .locals 1

    .line 2094
    iget-boolean v0, p0, Lcom/senseonics/model/TransmitterStateModel;->atccalSramResultRegisterExists:Z

    return v0
.end method

.method public isBluetoothEnabled()Z
    .locals 1

    .line 772
    iget-boolean v0, p0, Lcom/senseonics/model/TransmitterStateModel;->isBluetoothEnabled:Z

    return v0
.end method

.method public isClinicalMode()Z
    .locals 1

    .line 1236
    iget-boolean v0, p0, Lcom/senseonics/model/TransmitterStateModel;->clinicalMode:Z

    return v0
.end method

.method public isFormattedTransmitterVersionXL()Z
    .locals 3

    .line 824
    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->getFormattedTransmitterVersionNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 828
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "X"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 829
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "W"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 830
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Q"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 831
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Y"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 832
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Z"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 833
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "E"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGlucoseLevelWithinRange()Z
    .locals 2

    .line 1188
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->glucoseLevel:I

    sget v1, Lcom/senseonics/util/Utils;->GLUCOSE_VALID_MIN:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->glucoseLevel:I

    sget v1, Lcom/senseonics/util/Utils;->GLUCOSE_VALID_MAX:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHighGlucoseAlarmsEnabled()Z
    .locals 1

    .line 1627
    iget-boolean v0, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseAlarmsEnabled:Z

    return v0
.end method

.method public isPlacementModeInProgress()Z
    .locals 1

    .line 1224
    iget-boolean v0, p0, Lcom/senseonics/model/TransmitterStateModel;->placementModeInProgress:Z

    return v0
.end method

.method public isPredictiveAlertsActivated()Z
    .locals 1

    .line 1638
    iget-boolean v0, p0, Lcom/senseonics/model/TransmitterStateModel;->predictiveAlertsActivated:Z

    return v0
.end method

.method public isPredictiveHighAlertsActivated()Z
    .locals 1

    .line 1660
    iget-boolean v0, p0, Lcom/senseonics/model/TransmitterStateModel;->predictiveHighAlertsActivated:Z

    return v0
.end method

.method public isPredictiveLowAlertsActivated()Z
    .locals 1

    .line 1649
    iget-boolean v0, p0, Lcom/senseonics/model/TransmitterStateModel;->predictiveLowAlertsActivated:Z

    return v0
.end method

.method public isRateAlertsActivated()Z
    .locals 1

    .line 1715
    iget-boolean v0, p0, Lcom/senseonics/model/TransmitterStateModel;->rateAlertsActivated:Z

    return v0
.end method

.method public isRateFallingAlertsActivated()Z
    .locals 1

    .line 1726
    iget-boolean v0, p0, Lcom/senseonics/model/TransmitterStateModel;->rateFallingAlertsActivated:Z

    return v0
.end method

.method public isRateRisingAlertsActivated()Z
    .locals 1

    .line 1737
    iget-boolean v0, p0, Lcom/senseonics/model/TransmitterStateModel;->rateRisingAlertsActivated:Z

    return v0
.end method

.method public isTransmitterConnected()Z
    .locals 2

    .line 2205
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterConnectionState:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    sget-object v1, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isValidDate(Ljava/util/Calendar;)Z
    .locals 5

    .line 2218
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const-string v1, "GMT"

    .line 2219
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2220
    sget v2, Lcom/senseonics/util/Utils;->kNumberOfDaysToFetch:I

    neg-int v2, v2

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->add(II)V

    .line 2222
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 2223
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2225
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public isVibrateMode()Z
    .locals 1

    .line 1480
    iget-boolean v0, p0, Lcom/senseonics/model/TransmitterStateModel;->vibrateMode:Z

    return v0
.end method

.method public noCalEventInSpecificTimeRange()Z
    .locals 11

    .line 1030
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x0

    const-string v3, "calibrationDateTime"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    const-string v0, "GMT"

    .line 1032
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 1033
    invoke-static {v0}, Lcom/senseonics/util/Utils;->getTimeZoneOffset(Ljava/util/Calendar;)J

    move-result-wide v5

    const/16 v7, 0x10

    .line 1034
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    int-to-long v7, v7

    .line 1035
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    sub-long/2addr v9, v5

    sub-long/2addr v9, v7

    .line 1038
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "currentTimestamp:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "TimeChange"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "timestampCalib:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "calibMinsInMillis:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/32 v6, 0x249f00

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "diff:"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v9, v3

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v0, v9, v6

    if-gtz v0, :cond_1

    cmp-long v0, v9, v1

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1048
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "noCalEventInSpecificTimeRange?:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public onEvent(Lcom/senseonics/bluetoothle/BluetoothConnectionEvent;)V
    .locals 0

    .line 686
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/BluetoothConnectionEvent;->isBluetoothEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/senseonics/model/TransmitterStateModel;->isBluetoothEnabled:Z

    .line 687
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    return-void
.end method

.method public onEvent(Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;)V
    .locals 8

    .line 606
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;->getTransmitter()Lcom/senseonics/bluetoothle/Transmitter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/Transmitter;->getConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object v0

    .line 607
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with old state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterConnectionState:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "statusbar"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    sget-object v1, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->TRANSPORT_CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterAddress:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 611
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;->getTransmitter()Lcom/senseonics/bluetoothle/Transmitter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/senseonics/bluetoothle/Transmitter;->getAddress()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterAddress:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 612
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "skipping disconnect from another tx "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 614
    :cond_0
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;->getTransmitter()Lcom/senseonics/bluetoothle/Transmitter;

    move-result-object v1

    iput-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitter:Lcom/senseonics/bluetoothle/Transmitter;

    .line 615
    invoke-virtual {v1}, Lcom/senseonics/bluetoothle/Transmitter;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 616
    iget-object v2, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterAddress:Ljava/lang/String;

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 619
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    .line 620
    invoke-virtual {p0, v1}, Lcom/senseonics/model/TransmitterStateModel;->setTransmitterAddress(Ljava/lang/String;)V

    .line 621
    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitter:Lcom/senseonics/bluetoothle/Transmitter;

    invoke-virtual {v1}, Lcom/senseonics/bluetoothle/Transmitter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/senseonics/model/TransmitterStateModel;->setTransmitterName(Ljava/lang/String;)V

    .line 625
    :cond_2
    :goto_1
    iput-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterConnectionState:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    .line 627
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;->getTransmitter()Lcom/senseonics/bluetoothle/Transmitter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/Transmitter;->getConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object p1

    sget-object v0, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-eq p1, v0, :cond_3

    .line 628
    sget p1, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_UNKNOWN:I

    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->glucoseLevel:I

    .line 629
    sget-object p1, Lcom/senseonics/util/Utils$ARROW_TYPE;->STALE:Lcom/senseonics/util/Utils$ARROW_TYPE;

    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->glucoseTrendDirection:Lcom/senseonics/util/Utils$ARROW_TYPE;

    .line 630
    iput v3, p0, Lcom/senseonics/model/TransmitterStateModel;->signalStrengthIntValue:I

    .line 631
    iput v3, p0, Lcom/senseonics/model/TransmitterStateModel;->signalStrengthRawIntValue:I

    .line 632
    sget-object p1, Lcom/senseonics/model/SIGNAL_STRENGTH;->NO_SIGNAL:Lcom/senseonics/model/SIGNAL_STRENGTH;

    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->signalStrength:Lcom/senseonics/model/SIGNAL_STRENGTH;

    :cond_3
    const-string p1, "GMT"

    .line 635
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p1

    .line 636
    invoke-static {p1}, Lcom/senseonics/util/Utils;->getTimeZoneOffset(Ljava/util/Calendar;)J

    move-result-wide v0

    const/16 v2, 0x10

    .line 637
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v2, v2

    .line 638
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    sub-long/2addr v4, v2

    .line 639
    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->getCalibrationDurationMinutes()I

    move-result p1

    int-to-long v0, p1

    sget-wide v2, Lcom/senseonics/graph/util/GraphUtils;->MINUTE:J

    mul-long/2addr v0, v2

    .line 641
    iget-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "calibrationDateTime"

    invoke-interface {p1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    const-wide/16 v6, 0x0

    if-eqz p1, :cond_4

    .line 642
    iget-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1, v2, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    goto :goto_2

    :cond_4
    move-wide v2, v6

    :goto_2
    sub-long/2addr v4, v2

    cmp-long p1, v4, v0

    if-gtz p1, :cond_5

    cmp-long p1, v4, v6

    if-ltz p1, :cond_5

    sub-long/2addr v0, v4

    .line 647
    iput-wide v0, p0, Lcom/senseonics/model/TransmitterStateModel;->currentCountdown:J

    goto :goto_3

    .line 649
    :cond_5
    iput-wide v6, p0, Lcom/senseonics/model/TransmitterStateModel;->currentCountdown:J

    .line 651
    :goto_3
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    .line 652
    iget-wide v0, p0, Lcom/senseonics/model/TransmitterStateModel;->currentCountdown:J

    cmp-long p1, v0, v6

    if-lez p1, :cond_6

    .line 653
    invoke-virtual {p0, v0, v1}, Lcom/senseonics/model/TransmitterStateModel;->startCountDownTimer(J)V

    :cond_6
    return-void
.end method

.method public onEvent(Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;)V
    .locals 6

    .line 568
    const-class v0, Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onEvent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v3

    invoke-static {v3}, Lcom/senseonics/bluetoothle/HexHelper;->intArrayToString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->responseIdToParsedResponseMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->actualResponseId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/senseonics/model/ParsedResponse;

    .line 571
    instance-of v2, v1, Lcom/senseonics/model/NoOpParsedResponse;

    if-eqz v2, :cond_0

    .line 572
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "responseId ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->actualResponseId()I

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") was not handled. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v4

    invoke-static {v4}, Lcom/senseonics/bluetoothle/HexHelper;->intArrayToString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parsed response:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/senseonics/model/ParsedResponse;->check([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 577
    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;->getData()[I

    move-result-object p1

    invoke-interface {v1, p1, p0}, Lcom/senseonics/model/ParsedResponse;->apply([ILcom/senseonics/model/TransmitterStateModel;)V

    :cond_1
    return-void
.end method

.method public onEvent(Lcom/senseonics/events/CalibrationCountdownEvent;)V
    .locals 2

    .line 691
    invoke-virtual {p1}, Lcom/senseonics/events/CalibrationCountdownEvent;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "statusBar"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterConnectionState:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    sget-object v1, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-ne v0, v1, :cond_0

    .line 693
    invoke-virtual {p1}, Lcom/senseonics/events/CalibrationCountdownEvent;->getCurrentCountdownMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/senseonics/model/TransmitterStateModel;->currentCountdown:J

    .line 694
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    :cond_0
    return-void
.end method

.method public onEvent(Lcom/senseonics/events/RegisterNotFoundEvent;)V
    .locals 2

    .line 699
    invoke-virtual {p1}, Lcom/senseonics/events/RegisterNotFoundEvent;->getRequestData()[I

    move-result-object p1

    .line 701
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->highGlucoseAlarmEnabled:[I

    invoke-static {v0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadSingleByteSerialFlashRegister([I)[I

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 702
    invoke-virtual {p0, v1}, Lcom/senseonics/model/TransmitterStateModel;->setSupportForHighGluAlarmPredRateHighLowSettings(Z)V

    goto :goto_0

    .line 703
    :cond_0
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->delayBLEDisconnectAlarmAddress:[I

    invoke-static {v0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadTwoByteSerialFlashRegister([I)[I

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p1, 0xb4

    .line 704
    invoke-virtual {p0, p1}, Lcom/senseonics/model/TransmitterStateModel;->setDelayBLEDisconnectionAlarm(I)V

    .line 705
    invoke-virtual {p0, v1}, Lcom/senseonics/model/TransmitterStateModel;->setSupportForDelayBLEDisconnectionAlarm(Z)V

    goto :goto_0

    .line 706
    :cond_1
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->AtccalCrcAddress:[I

    invoke-static {v0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadTwoByteSerialFlashRegister([I)[I

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 707
    invoke-virtual {p0, v1}, Lcom/senseonics/model/TransmitterStateModel;->setAtccalCrcRegisterExists(Z)V

    goto :goto_0

    .line 708
    :cond_2
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->AtccalSramResultAddress:[I

    invoke-static {v0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadSingleByteSerialFlashRegister([I)[I

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 709
    invoke-virtual {p0, v1}, Lcom/senseonics/model/TransmitterStateModel;->setAtccalSramResultRegisterExists(Z)V

    goto :goto_0

    .line 710
    :cond_3
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->IsOneCalPhaseAddress:[I

    invoke-static {v0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadSingleByteSerialFlashRegister([I)[I

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 711
    invoke-virtual {p0, v1}, Lcom/senseonics/model/TransmitterStateModel;->setIsOneCalPhaseRegisterExists(Z)V

    goto :goto_0

    .line 712
    :cond_4
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->sensorFieldCurrentRawAddress:[I

    invoke-static {v0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadTwoByteSerialFlashRegister([I)[I

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 713
    invoke-virtual {p0, v1}, Lcom/senseonics/model/TransmitterStateModel;->setSignalStrengthRawRegisterExists(Z)V

    goto :goto_0

    .line 714
    :cond_5
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->MmaFeaturesAddress:[I

    invoke-static {v0}, Lcom/senseonics/bluetoothle/CommandOperations;->operationToReadSingleByteSerialFlashRegister([I)[I

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-eqz p1, :cond_6

    const/16 p1, 0xff

    .line 715
    invoke-virtual {p0, p1}, Lcom/senseonics/model/TransmitterStateModel;->setMmaFeatures(I)V

    :cond_6
    :goto_0
    return-void
.end method

.method public resetSyncRecordNumbersIfNeeded()V
    .locals 2

    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " preparesync"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "--- resetSyncRecordNumbersIfNeeded ---"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 526
    invoke-virtual {p0, v0}, Lcom/senseonics/model/TransmitterStateModel;->setMaxSyncedSensorRecord(I)V

    .line 527
    invoke-virtual {p0, v0}, Lcom/senseonics/model/TransmitterStateModel;->setMaxSyncedAlertRecord(I)V

    .line 528
    invoke-virtual {p0, v0}, Lcom/senseonics/model/TransmitterStateModel;->setMaxSyncedBloodGlucoseRecord(I)V

    return-void
.end method

.method public setAlertRecordRange(Lcom/senseonics/util/Range;)V
    .locals 3

    .line 478
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->alertRecordRange:Lcom/senseonics/util/Range;

    .line 479
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Lcom/senseonics/util/Range;->getFrom()I

    move-result v1

    const-string v2, "AlertRecordRangeFrom"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 480
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Lcom/senseonics/util/Range;->getTo()I

    move-result p1

    const-string v1, "AlertRecordRangeTo"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setAlgorithmParameterFormatVersion(I)V
    .locals 2

    .line 1376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Model set:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Algo format version"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->algorithmParameterFormatVersion:I

    .line 1378
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "prefAlgorithmParameterFormatVersion"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setAtccalCrcRegisterExists(Z)V
    .locals 2

    .line 2080
    iput-boolean p1, p0, Lcom/senseonics/model/TransmitterStateModel;->atccalCrcRegisterExists:Z

    .line 2081
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "AtccalCrcRegisterExists"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setAtccalSramResultRegisterExists(Z)V
    .locals 2

    .line 2089
    iput-boolean p1, p0, Lcom/senseonics/model/TransmitterStateModel;->atccalSramResultRegisterExists:Z

    .line 2090
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "AtccalSramResultRegisterExists"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setBatteryLevel(Lcom/senseonics/model/BATTERY_LEVEL;)V
    .locals 3

    .line 1137
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->batteryLevel:Lcom/senseonics/model/BATTERY_LEVEL;

    .line 1138
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Lcom/senseonics/model/BATTERY_LEVEL;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TransmitterBatterylevel"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1139
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/events/ModelChangedBatteryLevelEvent;

    invoke-direct {v1, p1}, Lcom/senseonics/events/ModelChangedBatteryLevelEvent;-><init>(Lcom/senseonics/model/BATTERY_LEVEL;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 1140
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    return-void
.end method

.method public setBatteryVoltage(F)V
    .locals 2

    .line 1127
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->batteryVoltage:F

    .line 1128
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "TransmitterBatteryVoltage"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1129
    iget-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v0, Lcom/senseonics/events/BatteryVoltageEvent;

    invoke-direct {v0}, Lcom/senseonics/events/BatteryVoltageEvent;-><init>()V

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public setBloodGlucoseRecordRange(Lcom/senseonics/util/Range;)V
    .locals 3

    .line 489
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->bloodGlucoseRecordRange:Lcom/senseonics/util/Range;

    .line 490
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Lcom/senseonics/util/Range;->getFrom()I

    move-result v1

    const-string v2, "BloodGlucoseRecordRangeFrom"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 491
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Lcom/senseonics/util/Range;->getTo()I

    move-result p1

    const-string v1, "BloodGlucoseRecordRangeTo"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setCalibrationPhaseStartDateOnly([I)V
    .locals 5

    const/4 v0, 0x0

    .line 913
    aget v1, p1, v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/16 v4, 0x7d0

    if-ne v1, v4, :cond_0

    aget v1, p1, v3

    if-nez v1, :cond_0

    aget v1, p1, v2

    if-nez v1, :cond_0

    const/4 p1, 0x0

    .line 914
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->startCalibrationPhaseDateAndTime:Ljava/util/Calendar;

    .line 915
    iget-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-wide/16 v0, 0x0

    const-string v2, "CalibrationStartDate"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 917
    :cond_0
    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->startCalibrationPhaseDateAndTime:Ljava/util/Calendar;

    if-nez v1, :cond_1

    .line 919
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    :cond_1
    const-string v4, "GMT"

    .line 922
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 923
    aget v4, p1, v0

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 924
    aget v4, p1, v3

    sub-int/2addr v4, v3

    invoke-virtual {v1, v2, v4}, Ljava/util/Calendar;->set(II)V

    const/4 v3, 0x5

    .line 925
    aget p1, p1, v2

    invoke-virtual {v1, v3, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xb

    .line 926
    invoke-virtual {v1, p1, v0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    .line 927
    invoke-virtual {v1, p1, v0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xd

    .line 928
    invoke-virtual {v1, p1, v0}, Ljava/util/Calendar;->set(II)V

    .line 929
    iput-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->startCalibrationPhaseDateAndTime:Ljava/util/Calendar;

    :goto_0
    return-void
.end method

.method public setCalibrationsMadeInThisPhase(I)V
    .locals 2

    .line 1331
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->calibrationsMadeInThisPhase:I

    .line 1332
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CalibrationsMadeInThisPhase"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1333
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    return-void
.end method

.method public setClinicalMode(Z)V
    .locals 2

    .line 1228
    iput-boolean p1, p0, Lcom/senseonics/model/TransmitterStateModel;->clinicalMode:Z

    .line 1230
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ClinicalMode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1231
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    .line 1232
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/events/ModelChangedClinicalModeEvent;

    invoke-direct {v1, p1}, Lcom/senseonics/events/ModelChangedClinicalModeEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public setCommunicationProtocolVersion(Ljava/lang/String;)V
    .locals 2

    .line 1410
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->communicationProtocolVersion:Ljava/lang/String;

    .line 1411
    sput-object p1, Lcom/senseonics/model/TransmitterStateModel;->communicationProtocolVersion_Static:Ljava/lang/String;

    .line 1412
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "prefCommunicationProtocolVersion"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setCurrentCalibrationPhase(Lcom/senseonics/util/Utils$CAL_PHASE;)V
    .locals 3

    .line 1244
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->currentCalibrationPhase:Lcom/senseonics/util/Utils$CAL_PHASE;

    .line 1245
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Lcom/senseonics/util/Utils$CAL_PHASE;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CurrentCalibrationPhase"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1246
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    .line 1247
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/events/ModelChangedCurrentCalibrationPhaseEvent;

    invoke-direct {v1, p1}, Lcom/senseonics/events/ModelChangedCurrentCalibrationPhaseEvent;-><init>(Lcom/senseonics/util/Utils$CAL_PHASE;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public setCurrentCountdown(J)V
    .locals 0

    .line 1349
    iput-wide p1, p0, Lcom/senseonics/model/TransmitterStateModel;->currentCountdown:J

    return-void
.end method

.method public setCurrentMessageCode(Lcom/senseonics/util/TransmitterMessageCode;)V
    .locals 0

    .line 1200
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->currentMessageCode:Lcom/senseonics/util/TransmitterMessageCode;

    .line 1202
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    .line 1203
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireMessageCodeChangedEvent()V

    return-void
.end method

.method public setDayStartTimeHour(I)V
    .locals 2

    .line 1904
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->dayStartTimeHour:I

    .line 1905
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "DayStartTimeHour"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1906
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Day Start Time Hour:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->dayStartTimeHour:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NewRegisters"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setDayStartTimeMinute(I)V
    .locals 2

    .line 1914
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->dayStartTimeMinute:I

    .line 1915
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "DayStartTimeMinute"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1916
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Day Start Time Minute:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->dayStartTimeMinute:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NewRegisters"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setDelayBLEDisconnectionAlarm(I)V
    .locals 2

    .line 1454
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->delayBLEDisconnectionAlarm:I

    .line 1455
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "DelayBLEDisconnectionAlarm"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1456
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    .line 1457
    iget-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v0, Lcom/senseonics/events/ModelChangedDelayBLEDisconnectionEvent;

    invoke-direct {v0}, Lcom/senseonics/events/ModelChangedDelayBLEDisconnectionEvent;-><init>()V

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public setDoNotDisturbMode(Z)V
    .locals 2

    .line 1491
    iput-boolean p1, p0, Lcom/senseonics/model/TransmitterStateModel;->doNotDisturbMode:Z

    .line 1492
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    .line 1493
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/events/ModelChangedDoNotDisturbModeEvent;

    invoke-direct {v1, p1}, Lcom/senseonics/events/ModelChangedDoNotDisturbModeEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public setEEP24MSP(F)V
    .locals 2

    .line 1893
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->EEP24MSP:F

    .line 1894
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "EEP24MSP"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1895
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EEP24 MSP:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->EEP24MSP:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NewRegisters"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setEveningCalibrationLocalTimeHour(I)V
    .locals 2

    .line 1824
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->eveningCalibrationLocalTimeHour:I

    .line 1825
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "EveningCalLocalHour"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setEveningCalibrationLocalTimeMinute(I)V
    .locals 2

    .line 1833
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->eveningCalibrationLocalTimeMinute:I

    .line 1834
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "EveningCalLocalMinute"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setEveningCalibrationTimeHour(I)V
    .locals 2

    .line 1777
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->eveningCalibrationTimeHour:I

    .line 1778
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "EveningCalHour"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1779
    iget-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v0, Lcom/senseonics/events/ModelChangedCalibrationTimeEvent;

    invoke-direct {v0}, Lcom/senseonics/events/ModelChangedCalibrationTimeEvent;-><init>()V

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 1780
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    return-void
.end method

.method public setEveningCalibrationTimeMinute(I)V
    .locals 2

    .line 1788
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->eveningCalibrationTimeMinute:I

    .line 1789
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "EveningCalMinute"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1790
    iget-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v0, Lcom/senseonics/events/ModelChangedCalibrationTimeEvent;

    invoke-direct {v0}, Lcom/senseonics/events/ModelChangedCalibrationTimeEvent;-><init>()V

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 1791
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    return-void
.end method

.method public setGlucoseLevel(I)V
    .locals 2

    .line 1160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setGlucoseLevel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#3640"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->glucoseLevel:I

    .line 1162
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    .line 1163
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireRefreshGraphEvent()V

    return-void
.end method

.method public setGlucoseTimestamp(Ljava/util/Calendar;)V
    .locals 0

    .line 1148
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->glucoseTimestamp:Ljava/util/Calendar;

    return-void
.end method

.method public setGlucoseTrendDirection(Lcom/senseonics/util/Utils$ARROW_TYPE;)V
    .locals 0

    .line 1179
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->glucoseTrendDirection:Lcom/senseonics/util/Utils$ARROW_TYPE;

    .line 1180
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    return-void
.end method

.method public setHighGlucoseAlarmRepeatIntervalDayTime(I)V
    .locals 2

    .line 1944
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseAlarmRepeatIntervalDayTime:I

    .line 1945
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "HighGlucoseAlarmRepeatIntervalDayTime"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1946
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "High Day:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseAlarmRepeatIntervalDayTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NewRegisters"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1947
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/events/ModelChangedHighGlucoseAlarmRepeatIntervalDayTimeEvent;

    invoke-direct {v1, p1}, Lcom/senseonics/events/ModelChangedHighGlucoseAlarmRepeatIntervalDayTimeEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public setHighGlucoseAlarmRepeatIntervalNightTime(I)V
    .locals 2

    .line 1955
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseAlarmRepeatIntervalNightTime:I

    .line 1956
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "HighGlucoseAlarmRepeatIntervalNightTime"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1957
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "High Night:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseAlarmRepeatIntervalNightTime:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NewRegisters"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setHighGlucoseAlarmThreshold(I)V
    .locals 4

    .line 1566
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseAlarmThreshold:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1567
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHighGlucoseAlarmThreshold shouldRefreshGraph?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseAlarmThreshold:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "#3640_2"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseAlarmThreshold:I

    .line 1570
    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "glucoseAlarmHigh"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1573
    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v2, Lcom/senseonics/events/ModelChangedHighAlarmThresholdEvent;

    invoke-direct {v2, p1}, Lcom/senseonics/events/ModelChangedHighAlarmThresholdEvent;-><init>(I)V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 1575
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    if-eqz v0, :cond_1

    .line 1578
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireRefreshGraphEvent()V

    .line 1581
    :cond_1
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireGlucoseSettingsChangedEvent()V

    return-void
.end method

.method public setHighGlucoseAlarmsEnabled(Z)V
    .locals 2

    .line 1620
    iput-boolean p1, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseAlarmsEnabled:Z

    .line 1621
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "glucoseAlarmHighEnabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1622
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    .line 1623
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireGlucoseSettingsChangedEvent()V

    return-void
.end method

.method public setHighGlucoseTarget(I)V
    .locals 4

    .line 1520
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseTarget:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1521
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHighGlucoseTarget shouldRefreshGraph?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseTarget:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "#3640_2"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->highGlucoseTarget:I

    .line 1524
    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "glucoseTargetHigh"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1527
    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v2, Lcom/senseonics/events/ModelChangedHighTargetThresholdEvent;

    invoke-direct {v2, p1}, Lcom/senseonics/events/ModelChangedHighTargetThresholdEvent;-><init>(I)V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 1529
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    if-eqz v0, :cond_1

    .line 1532
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireRefreshGraphEvent()V

    .line 1535
    :cond_1
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireGlucoseSettingsChangedEvent()V

    return-void
.end method

.method public setHysteresisHighGlocosePercent(I)V
    .locals 2

    .line 536
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->hysteresisHighGlocosePercent:I

    .line 537
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "HysteresisPercent"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHysteresisHighPredictiveGlocosePercent(I)V
    .locals 2

    .line 554
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->hysteresisHighPredictiveGlocosePercent:I

    .line 555
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "HysteresisPredictivePercent"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHysteresisLowGlucoseValueMgDl(I)V
    .locals 2

    .line 545
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->hysteresisLowGlucoseValueMgDl:I

    .line 546
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "HysteresisValue"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHysteresisLowPredictiveGlucoseValueMgDl(I)V
    .locals 2

    .line 563
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->hysteresisLowPredictiveGlucoseValueMgDl:I

    .line 564
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "HysteresisPredictiveValue"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setIsBluetoothEnabled(Z)V
    .locals 0

    .line 776
    iput-boolean p1, p0, Lcom/senseonics/model/TransmitterStateModel;->isBluetoothEnabled:Z

    return-void
.end method

.method public setIsGlucoseStale(Z)V
    .locals 2

    .line 2043
    iput-boolean p1, p0, Lcom/senseonics/model/TransmitterStateModel;->isGlucoseStale:Z

    .line 2044
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "IsGlucoseStale"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2045
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    return-void
.end method

.method public setIsOneCalPhaseRegisterExists(Z)V
    .locals 2

    .line 2150
    iput-boolean p1, p0, Lcom/senseonics/model/TransmitterStateModel;->isOneCalPhaseRegisterExists:Z

    .line 2151
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "IsOneCalPhaseRegisterExists"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setIsOneCalPhaseValue(I)V
    .locals 2

    .line 2159
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->isOneCalPhaseValue:I

    .line 2160
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "IsOneCalPhaseValue"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setKeepAliveAlertActive(Z)V
    .locals 2

    .line 2033
    iput-boolean p1, p0, Lcom/senseonics/model/TransmitterStateModel;->keepAliveAlertActive:Z

    .line 2034
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "KeepAliveAlertActive"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2035
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    return-void
.end method

.method public setLastCalibrationDateAndTime(Ljava/util/Calendar;)V
    .locals 4

    .line 1054
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->lastCalibrationDateAndTime:Ljava/util/Calendar;

    const-string v0, "LastCalibration"

    if-nez p1, :cond_0

    .line 1058
    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 1060
    :cond_0
    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1063
    :goto_0
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/events/ModelChangedLastCalibrationDateTimeEvent;

    invoke-direct {v1, p1}, Lcom/senseonics/events/ModelChangedLastCalibrationDateTimeEvent;-><init>(Ljava/util/Calendar;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 1064
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    return-void
.end method

.method public setLastGlucoseSyncedMaxRecordTimestamp(J)V
    .locals 2

    .line 457
    iput-wide p1, p0, Lcom/senseonics/model/TransmitterStateModel;->lastGlucoseSyncedMaxRecordTimestamp:J

    .line 458
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "LastGlucoseSyncedMaxRecordTimestamp"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setLastReadTransmitterDatetimeTimestamp(J)V
    .locals 2

    .line 448
    iput-wide p1, p0, Lcom/senseonics/model/TransmitterStateModel;->lastReadTransmitterDatetimeTimestamp:J

    .line 449
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "LastReadTransmitterDatetimeTimestamp"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setLinkedSensorId(Ljava/lang/String;)V
    .locals 2

    .line 1497
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->linkedSensorId:Ljava/lang/String;

    .line 1498
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SensorId"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1499
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    .line 1500
    iget-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v0, Lcom/senseonics/events/ModelChangedLinkedSensorIdEvent;

    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->linkedSensorId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/senseonics/events/ModelChangedLinkedSensorIdEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public setLowGlucoseAlarmRepeatIntervalDayTime(I)V
    .locals 2

    .line 1965
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseAlarmRepeatIntervalDayTime:I

    .line 1966
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "LowGlucoseAlarmRepeatIntervalDayTime"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1967
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Low Day:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseAlarmRepeatIntervalDayTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NewRegisters"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/events/ModelChangedLowGlucoseAlarmRepeatIntervalDayTimeEvent;

    invoke-direct {v1, p1}, Lcom/senseonics/events/ModelChangedLowGlucoseAlarmRepeatIntervalDayTimeEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public setLowGlucoseAlarmRepeatIntervalNightTime(I)V
    .locals 2

    .line 1976
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseAlarmRepeatIntervalNightTime:I

    .line 1977
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "LowGlucoseAlarmRepeatIntervalNightTime"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1978
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Low Night:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseAlarmRepeatIntervalNightTime:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NewRegisters"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setLowGlucoseAlarmThreshold(I)V
    .locals 4

    .line 1597
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseAlarmThreshold:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1598
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLowGlucoseAlarmThreshold shouldRefreshGraph?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseAlarmThreshold:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "#3640_2"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseAlarmThreshold:I

    .line 1601
    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "glucoseAlarmLow"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1604
    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v2, Lcom/senseonics/events/ModelChangedLowAlarmThresholdEvent;

    invoke-direct {v2, p1}, Lcom/senseonics/events/ModelChangedLowAlarmThresholdEvent;-><init>(I)V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 1606
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    if-eqz v0, :cond_1

    .line 1609
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireRefreshGraphEvent()V

    .line 1612
    :cond_1
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireGlucoseSettingsChangedEvent()V

    return-void
.end method

.method public setLowGlucoseTarget(I)V
    .locals 4

    .line 1543
    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseTarget:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1544
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLowGlucoseTarget shouldRefreshGraph?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseTarget:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "#3640_2"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->lowGlucoseTarget:I

    .line 1547
    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "glucoseTargetLow"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1550
    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v2, Lcom/senseonics/events/ModelChangedLowTargetThresholdEvent;

    invoke-direct {v2, p1}, Lcom/senseonics/events/ModelChangedLowTargetThresholdEvent;-><init>(I)V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 1552
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    if-eqz v0, :cond_1

    .line 1555
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireRefreshGraphEvent()V

    .line 1558
    :cond_1
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireGlucoseSettingsChangedEvent()V

    return-void
.end method

.method public setMEPSavedDriftMetric(F)V
    .locals 2

    .line 1863
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->MEPSavedDriftMetric:F

    .line 1864
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "MEPSavedDriftMetric"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1865
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MEP Saved Drift Metric:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->MEPSavedDriftMetric:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NewRegisters"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setMEPSavedLowRefMetric(F)V
    .locals 2

    .line 1873
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->MEPSavedLowRefMetric:F

    .line 1874
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "MEPSavedLowRefMetric"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1875
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MEP Saved Low Ref Metric:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->MEPSavedLowRefMetric:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NewRegisters"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setMEPSavedRefChannelMetric(F)V
    .locals 2

    .line 1853
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->MEPSavedRefChannelMetric:F

    .line 1854
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "MEPSavedRefChannelMetric"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1855
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MEP Saved Ref Channel Metric:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->MEPSavedRefChannelMetric:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NewRegisters"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setMEPSavedSpike(F)V
    .locals 2

    .line 1883
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->MEPSavedSpike:F

    .line 1884
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "MEPSavedSpike"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1885
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MEP Saved Spike:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->MEPSavedSpike:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NewRegisters"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setMEPSavedValue(F)V
    .locals 2

    .line 1843
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->MEPSavedValue:F

    .line 1844
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "MEPSavedValue"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1845
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MEP Saved Value:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->MEPSavedValue:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NewRegisters"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setMaxCalibrationThreshold(I)V
    .locals 2

    .line 1022
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->maxCalibrationThreshold:I

    .line 1023
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "MaxCalibrationThreshold"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setMaxSyncedAlertRecord(I)V
    .locals 3

    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " PrepareSync"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*** setMaxSyncedAlertRecord:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->maxSyncedAlertRecord:I

    .line 511
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "MaxSyncedAlertRecord"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setMaxSyncedBloodGlucoseRecord(I)V
    .locals 3

    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " PrepareSync"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*** setMaxSyncedBloodGlucoseRecord:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->maxSyncedBloodGlucoseRecord:I

    .line 521
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "MaxSyncedBloodGlucoseRecord"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setMaxSyncedSensorRecord(I)V
    .locals 3

    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " PrepareSync"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*** setMaxSyncedSensorRecord:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->maxSyncedSensorRecord:I

    .line 501
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "MaxSyncedSensorRecord"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setMinCalibrationThreshold(I)V
    .locals 2

    .line 1013
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->minCalibrationThreshold:I

    .line 1014
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "MinCalibrationThreshold"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setMinutesAfterNextCalibrationTime(I)V
    .locals 0

    .line 997
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->minutesAfterNextCalibrationTime:I

    return-void
.end method

.method public setMinutesBeforeNextCalibrationTime(I)V
    .locals 0

    .line 989
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->minutesBeforeNextCalibrationTime:I

    return-void
.end method

.method public setMinutesRemainingUntilCalibrationAllowed(I)V
    .locals 0

    .line 1005
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->minutesRemainingUntilCalibrationAllowed:I

    return-void
.end method

.method public setMmaFeatures(I)V
    .locals 2

    .line 2172
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->mmaFeatures:I

    .line 2173
    sput p1, Lcom/senseonics/model/TransmitterStateModel;->mmaFeatures_Static:I

    .line 2174
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "MmaFeatures"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setMorningCalibrationLocalTimeHour(I)V
    .locals 2

    .line 1806
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->morningCalibrationLocalTimeHour:I

    .line 1807
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "MorningCalLocalHour"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setMorningCalibrationLocalTimeMinute(I)V
    .locals 2

    .line 1815
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->morningCalibrationLocalTimeMinute:I

    .line 1816
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "MorningCalLocalMinute"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setMorningCalibrationTimeHour(I)V
    .locals 2

    .line 1755
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->morningCalibrationTimeHour:I

    .line 1756
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "MorningCalHour"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1757
    iget-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v0, Lcom/senseonics/events/ModelChangedCalibrationTimeEvent;

    invoke-direct {v0}, Lcom/senseonics/events/ModelChangedCalibrationTimeEvent;-><init>()V

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 1758
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    return-void
.end method

.method public setMorningCalibrationTimeMinute(I)V
    .locals 2

    .line 1766
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->morningCalibrationTimeMinute:I

    .line 1767
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "MorningCalMinute"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1768
    iget-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v0, Lcom/senseonics/events/ModelChangedCalibrationTimeEvent;

    invoke-direct {v0}, Lcom/senseonics/events/ModelChangedCalibrationTimeEvent;-><init>()V

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 1769
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    return-void
.end method

.method public setMostRecentGlucoseDateOnly([I)V
    .locals 5

    const/4 v0, 0x0

    .line 2126
    aget v1, p1, v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/16 v4, 0x7d0

    if-ne v1, v4, :cond_0

    aget v1, p1, v3

    if-nez v1, :cond_0

    aget v1, p1, v2

    if-nez v1, :cond_0

    const/4 p1, 0x0

    .line 2127
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->mostRecentGlucoseDateTime:Ljava/util/Calendar;

    .line 2128
    iget-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-wide/16 v0, 0x0

    const-string v2, "MostRecentGlucoseDateTime"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 2130
    :cond_0
    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->mostRecentGlucoseDateTime:Ljava/util/Calendar;

    if-nez v1, :cond_1

    .line 2132
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    :cond_1
    const-string v4, "GMT"

    .line 2134
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2135
    aget v4, p1, v0

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 2136
    aget v4, p1, v3

    sub-int/2addr v4, v3

    invoke-virtual {v1, v2, v4}, Ljava/util/Calendar;->set(II)V

    const/4 v3, 0x5

    .line 2137
    aget p1, p1, v2

    invoke-virtual {v1, v3, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xb

    .line 2138
    invoke-virtual {v1, p1, v0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    .line 2139
    invoke-virtual {v1, p1, v0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xd

    .line 2140
    invoke-virtual {v1, p1, v0}, Ljava/util/Calendar;->set(II)V

    .line 2141
    iput-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->mostRecentGlucoseDateTime:Ljava/util/Calendar;

    :goto_0
    return-void
.end method

.method public setMostRecentGlucoseDateTime(Ljava/util/Calendar;)V
    .locals 4

    .line 2114
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->mostRecentGlucoseDateTime:Ljava/util/Calendar;

    const-string v0, "MostRecentGlucoseDateTime"

    if-nez p1, :cond_0

    .line 2117
    iget-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-wide/16 v1, 0x0

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 2119
    :cond_0
    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2122
    :goto_0
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    return-void
.end method

.method public setMostRecentGlucoseRegisterValue(I)V
    .locals 0

    .line 1171
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->mostRecentGlucoseRegisterValue:I

    return-void
.end method

.method public setNextScheduledCalibration(Ljava/util/Calendar;)V
    .locals 0

    .line 962
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->nextScheduledCalibration:Ljava/util/Calendar;

    return-void
.end method

.method public setNextScheduledCalibrationDateOnly([I)V
    .locals 5

    const/4 v0, 0x0

    .line 966
    aget v1, p1, v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/16 v4, 0x7d0

    if-ne v1, v4, :cond_0

    aget v1, p1, v3

    if-nez v1, :cond_0

    aget v1, p1, v2

    if-nez v1, :cond_0

    const/4 p1, 0x0

    .line 967
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->nextScheduledCalibration:Ljava/util/Calendar;

    goto :goto_0

    .line 969
    :cond_0
    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->nextScheduledCalibration:Ljava/util/Calendar;

    if-nez v1, :cond_1

    .line 971
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    :cond_1
    const-string v4, "GMT"

    .line 973
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 974
    aget v4, p1, v0

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 975
    aget v4, p1, v3

    sub-int/2addr v4, v3

    invoke-virtual {v1, v2, v4}, Ljava/util/Calendar;->set(II)V

    const/4 v3, 0x5

    .line 976
    aget p1, p1, v2

    invoke-virtual {v1, v3, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xb

    .line 977
    invoke-virtual {v1, p1, v0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    .line 978
    invoke-virtual {v1, p1, v0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xd

    .line 979
    invoke-virtual {v1, p1, v0}, Ljava/util/Calendar;->set(II)V

    .line 980
    iput-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->nextScheduledCalibration:Ljava/util/Calendar;

    :goto_0
    return-void
.end method

.method public setNightStartTimeHour(I)V
    .locals 2

    .line 1924
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->nightStartTimeHour:I

    .line 1925
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "NightStartTimeHour"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1926
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Night Start Time Hour:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->nightStartTimeHour:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NewRegisters"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setNightStartTimeMinute(I)V
    .locals 2

    .line 1934
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->nightStartTimeMinute:I

    .line 1935
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "NightStartTimeMinute"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1936
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Night Start Time Minute:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/senseonics/model/TransmitterStateModel;->nightStartTimeMinute:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NewRegisters"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setPlacementModeInProgress(Z)V
    .locals 1

    .line 1215
    iget-boolean v0, p0, Lcom/senseonics/model/TransmitterStateModel;->placementModeInProgress:Z

    .line 1216
    iput-boolean p1, p0, Lcom/senseonics/model/TransmitterStateModel;->placementModeInProgress:Z

    if-eq v0, p1, :cond_0

    .line 1219
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    :cond_0
    return-void
.end method

.method public setPredictiveAlertsActivated(Z)V
    .locals 2

    .line 1631
    iput-boolean p1, p0, Lcom/senseonics/model/TransmitterStateModel;->predictiveAlertsActivated:Z

    .line 1632
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "predictiveAlertsActivated"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1633
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    .line 1634
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireGlucoseSettingsChangedEvent()V

    return-void
.end method

.method public setPredictiveFallingRateAlertMinuteInterval(I)V
    .locals 2

    .line 1664
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->predictiveFallingRateAlertMinuteInterval:I

    .line 1665
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "predictiveMinutes"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1666
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    .line 1667
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireGlucoseSettingsChangedEvent()V

    return-void
.end method

.method public setPredictiveHighAlertsActivated(Z)V
    .locals 2

    .line 1653
    iput-boolean p1, p0, Lcom/senseonics/model/TransmitterStateModel;->predictiveHighAlertsActivated:Z

    .line 1654
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "predictiveHighAlertsActivated"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1655
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    .line 1656
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireGlucoseSettingsChangedEvent()V

    return-void
.end method

.method public setPredictiveLowAlertsActivated(Z)V
    .locals 2

    .line 1642
    iput-boolean p1, p0, Lcom/senseonics/model/TransmitterStateModel;->predictiveLowAlertsActivated:Z

    .line 1643
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "predictiveLowAlertsActivated"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1644
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    .line 1645
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireGlucoseSettingsChangedEvent()V

    return-void
.end method

.method public setPredictiveRisingRateAlertMinuteInterval(I)V
    .locals 2

    .line 1675
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->predictiveRisingRateAlertMinuteInterval:I

    .line 1676
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "predictiveRisingMinutes"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1677
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    .line 1678
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireGlucoseSettingsChangedEvent()V

    return-void
.end method

.method public setRateAlertFallingThreshold(F)V
    .locals 2

    .line 1686
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->rateAlertFallingThreshold:F

    .line 1687
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "rateAlertValue"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1688
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    .line 1689
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireGlucoseSettingsChangedEvent()V

    return-void
.end method

.method public setRateAlertRisingThreshold(F)V
    .locals 2

    .line 1697
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->rateAlertRisingThreshold:F

    .line 1698
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "rateAlertRisingValue"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1699
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    .line 1700
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireGlucoseSettingsChangedEvent()V

    return-void
.end method

.method public setRateAlertsActivated(Z)V
    .locals 2

    .line 1708
    iput-boolean p1, p0, Lcom/senseonics/model/TransmitterStateModel;->rateAlertsActivated:Z

    .line 1709
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "rateAlertsActivated"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1710
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    .line 1711
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireGlucoseSettingsChangedEvent()V

    return-void
.end method

.method public setRateFallingAlertsActivated(Z)V
    .locals 2

    .line 1719
    iput-boolean p1, p0, Lcom/senseonics/model/TransmitterStateModel;->rateFallingAlertsActivated:Z

    .line 1720
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "rateFallingAlertsActivated"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1721
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    .line 1722
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireGlucoseSettingsChangedEvent()V

    return-void
.end method

.method public setRateRisingAlertsActivated(Z)V
    .locals 2

    .line 1730
    iput-boolean p1, p0, Lcom/senseonics/model/TransmitterStateModel;->rateRisingAlertsActivated:Z

    .line 1731
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "rateRisingAlertsActivated"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1732
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    .line 1733
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireGlucoseSettingsChangedEvent()V

    return-void
.end method

.method public setRawDataValue(Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;I)V
    .locals 1

    .line 1993
    sget-object v0, Lcom/senseonics/model/TransmitterStateModel$2;->$SwitchMap$com$senseonics$bluetoothle$MemoryMap$RAW_DATA_INDEX:[I

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/MemoryMap$RAW_DATA_INDEX;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2023
    :pswitch_0
    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue8:I

    goto :goto_0

    .line 2019
    :pswitch_1
    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue7:I

    goto :goto_0

    .line 2015
    :pswitch_2
    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue6:I

    goto :goto_0

    .line 2011
    :pswitch_3
    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue5:I

    goto :goto_0

    .line 2007
    :pswitch_4
    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue4:I

    goto :goto_0

    .line 2003
    :pswitch_5
    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue3:I

    goto :goto_0

    .line 1999
    :pswitch_6
    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue2:I

    goto :goto_0

    .line 1995
    :pswitch_7
    iput p2, p0, Lcom/senseonics/model/TransmitterStateModel;->rawDataValue1:I

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setReadyForCalibrationState(I)V
    .locals 0

    .line 954
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->readyForCalibrationState:I

    return-void
.end method

.method public setSamplingIntervalInSeconds(I)V
    .locals 2

    .line 1357
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->samplingIntervalInSeconds:I

    .line 1358
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "prefSamplingInterval"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setSensorGlucoseAlertStatus([I)V
    .locals 2

    .line 2075
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->sensorGlucoseAlertStatus:[I

    .line 2076
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->preferenceObjectSaverRetriver:Lcom/senseonics/util/PreferenceObjectSaverRetriver;

    const-string v1, "SensorGlucoseAlertStatus"

    invoke-virtual {v0, v1, p1}, Lcom/senseonics/util/PreferenceObjectSaverRetriver;->saveSensorGlucoseAlertStatus(Ljava/lang/String;[I)V

    return-void
.end method

.method public setSensorGlucoseRecordRange(Lcom/senseonics/util/Range;)V
    .locals 3

    .line 467
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->sensorGlucoseRecordRange:Lcom/senseonics/util/Range;

    .line 468
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Lcom/senseonics/util/Range;->getFrom()I

    move-result v1

    const-string v2, "SensorGlucoseRecordRangeFrom"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 469
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Lcom/senseonics/util/Range;->getTo()I

    move-result p1

    const-string v1, "SensorGlucoseRecordRangeTo"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setSensorInsertionDateAndTime(Ljava/util/Calendar;)V
    .locals 4

    .line 735
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->sensorInsertionDateAndTime:Ljava/util/Calendar;

    const-string v0, "SensorInsertionDateTime"

    if-nez p1, :cond_0

    .line 738
    iget-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-wide/16 v1, 0x0

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 740
    :cond_0
    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    const-string p1, "Insertion Debug"

    const-string v0, "fire change event"

    .line 743
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    .line 745
    iget-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v0, Lcom/senseonics/events/ModelChangedSensorInsertDateTimeEvent;

    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->sensorInsertionDateAndTime:Ljava/util/Calendar;

    invoke-direct {v0, v1}, Lcom/senseonics/events/ModelChangedSensorInsertDateTimeEvent;-><init>(Ljava/util/Calendar;)V

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public setSensorInsertionDateOnly([I)V
    .locals 5

    const/4 v0, 0x0

    .line 749
    aget v1, p1, v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/16 v4, 0x7d0

    if-ne v1, v4, :cond_0

    aget v1, p1, v3

    if-nez v1, :cond_0

    aget v1, p1, v2

    if-nez v1, :cond_0

    const/4 p1, 0x0

    .line 750
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->sensorInsertionDateAndTime:Ljava/util/Calendar;

    .line 751
    iget-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-wide/16 v0, 0x0

    const-string v2, "SensorInsertionDateTime"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 753
    :cond_0
    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->sensorInsertionDateAndTime:Ljava/util/Calendar;

    if-nez v1, :cond_1

    .line 755
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    :cond_1
    const-string v4, "GMT"

    .line 758
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 759
    aget v4, p1, v0

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 760
    aget v4, p1, v3

    sub-int/2addr v4, v3

    invoke-virtual {v1, v2, v4}, Ljava/util/Calendar;->set(II)V

    const/4 v3, 0x5

    .line 761
    aget p1, p1, v2

    invoke-virtual {v1, v3, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xb

    .line 762
    invoke-virtual {v1, p1, v0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    .line 763
    invoke-virtual {v1, p1, v0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xd

    .line 764
    invoke-virtual {v1, p1, v0}, Ljava/util/Calendar;->set(II)V

    const-string p1, "Insertion Debug"

    const-string v0, "set date only"

    .line 766
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    iput-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->sensorInsertionDateAndTime:Ljava/util/Calendar;

    :goto_0
    return-void
.end method

.method public setSignalStrength(Lcom/senseonics/model/SIGNAL_STRENGTH;)V
    .locals 0

    .line 1117
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->signalStrength:Lcom/senseonics/model/SIGNAL_STRENGTH;

    .line 1118
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    .line 1119
    invoke-virtual {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireSignalStrengthChangedEvent()V

    return-void
.end method

.method public setSignalStrengthIntValue(I)V
    .locals 0

    .line 1092
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->signalStrengthIntValue:I

    return-void
.end method

.method public setSignalStrengthRawIntValue(I)V
    .locals 0

    .line 1109
    iput p1, p0, Lcom/senseonics/model/TransmitterStateModel;->signalStrengthRawIntValue:I

    return-void
.end method

.method public setSignalStrengthRawRegisterExists(Z)V
    .locals 2

    .line 1100
    iput-boolean p1, p0, Lcom/senseonics/model/TransmitterStateModel;->signalStrengthRawRegisterExists:Z

    .line 1101
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SignalStrengthRawRegisterExists"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setStartCalibrationPhaseDateAndTime(Ljava/util/Calendar;)V
    .locals 3

    .line 900
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->startCalibrationPhaseDateAndTime:Ljava/util/Calendar;

    const-string v0, "CalibrationStartDate"

    if-nez p1, :cond_0

    .line 903
    iget-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-wide/16 v1, 0x0

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 905
    :cond_0
    iget-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->startCalibrationPhaseDateAndTime:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 908
    :goto_0
    iget-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v0, Lcom/senseonics/events/ModelChangedStartPhaseCalibrationDateTimeEvent;

    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->startCalibrationPhaseDateAndTime:Ljava/util/Calendar;

    invoke-direct {v0, v1}, Lcom/senseonics/events/ModelChangedStartPhaseCalibrationDateTimeEvent;-><init>(Ljava/util/Calendar;)V

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 909
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    return-void
.end method

.method public setSupportForDelayBLEDisconnectionAlarm(Z)V
    .locals 2

    .line 1465
    iput-boolean p1, p0, Lcom/senseonics/model/TransmitterStateModel;->supportForDelayBLEDisconnectionAlarm:Z

    .line 1466
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SupportForDelayBLEDisconnectionAlarm"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1467
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    .line 1468
    iget-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v0, Lcom/senseonics/events/SupportDisconnectMinuteSettingEvent;

    invoke-direct {v0}, Lcom/senseonics/events/SupportDisconnectMinuteSettingEvent;-><init>()V

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public setSupportForHighGluAlarmPredRateHighLowSettings(Z)V
    .locals 2

    .line 1741
    iput-boolean p1, p0, Lcom/senseonics/model/TransmitterStateModel;->supportForHighGluAlarmPredRateHighLowSettings:Z

    .line 1742
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "supportForHighGluAlarmPredRateHighLowSettings"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1743
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    .line 1744
    iget-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v0, Lcom/senseonics/events/SupportForHighGluAlarmPredRateHighLowSettingsEvent;

    invoke-direct {v0}, Lcom/senseonics/events/SupportForHighGluAlarmPredRateHighLowSettingsEvent;-><init>()V

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public setTransmitterAddress(Ljava/lang/String;)V
    .locals 0

    .line 797
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterAddress:Ljava/lang/String;

    .line 798
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->updateTransmitterAddressInPreference()V

    return-void
.end method

.method public setTransmitterConnectionState(Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;)V
    .locals 0

    .line 602
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterConnectionState:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    return-void
.end method

.method public setTransmitterModelNumber(Ljava/lang/String;)V
    .locals 3

    .line 817
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterModelNumber:Ljava/lang/String;

    .line 818
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterModelNumber:Ljava/lang/String;

    const-string v2, "ModelNumber"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 819
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/events/ModelChangedTransmitterModelNoEvent;

    invoke-direct {v1, p1}, Lcom/senseonics/events/ModelChangedTransmitterModelNoEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 820
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    return-void
.end method

.method public setTransmitterName(Ljava/lang/String;)V
    .locals 0

    .line 788
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterName:Ljava/lang/String;

    .line 789
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->updateTransmitterNameInPreference()V

    return-void
.end method

.method public setTransmitterSerialNumber(Ljava/lang/String;)V
    .locals 2

    .line 806
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterSerialNumber:Ljava/lang/String;

    .line 807
    iget-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterSerialNumber:Ljava/lang/String;

    const-string v1, "TransmitterSerialNumber"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 808
    iget-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v0, Lcom/senseonics/events/ModelChangedTransmitterSerialNumberEvent;

    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterSerialNumber:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/senseonics/events/ModelChangedTransmitterSerialNumberEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 809
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    return-void
.end method

.method public setTransmitterTime(J)V
    .locals 2

    .line 880
    iput-wide p1, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterTime:J

    .line 881
    iget-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-wide v0, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterTime:J

    const-string p2, "TransmitterTime"

    invoke-interface {p1, p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setTransmitterVersionExtensionNumber(Ljava/lang/String;)V
    .locals 2

    .line 871
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterVersionExtensionNumber:Ljava/lang/String;

    .line 872
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ExtensionNumber"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setTransmitterVersionNumber(Ljava/lang/String;)V
    .locals 3

    .line 864
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterVersionNumber:Ljava/lang/String;

    .line 865
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->transmitterVersionNumber:Ljava/lang/String;

    const-string v2, "FirmwareVersion"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 866
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/events/ModelChangedTransmitterFirmwareVersionEvent;

    invoke-direct {v1, p1}, Lcom/senseonics/events/ModelChangedTransmitterFirmwareVersionEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 867
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    return-void
.end method

.method public setUnLinkedSensorId(Ljava/lang/String;)V
    .locals 2

    .line 1508
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->unLinkedSensorId:Ljava/lang/String;

    .line 1509
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "UnlinkedSensorId"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1510
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    .line 1511
    iget-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v0, Lcom/senseonics/events/ModelChangedUnLinkedSensorIdEvent;

    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->unLinkedSensorId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/senseonics/events/ModelChangedUnLinkedSensorIdEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public setVibrateMode(Z)V
    .locals 2

    .line 1484
    iput-boolean p1, p0, Lcom/senseonics/model/TransmitterStateModel;->vibrateMode:Z

    .line 1485
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "VibrationMode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1486
    invoke-direct {p0}, Lcom/senseonics/model/TransmitterStateModel;->fireChangeEvent()V

    .line 1487
    iget-object v0, p0, Lcom/senseonics/model/TransmitterStateModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/events/ModelChangedVibrateModeEvent;

    invoke-direct {v1, p1}, Lcom/senseonics/events/ModelChangedVibrateModeEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public setlastCalibrationDateOnly([I)V
    .locals 5

    const/4 v0, 0x0

    .line 1068
    aget v1, p1, v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/16 v4, 0x7d0

    if-ne v1, v4, :cond_0

    aget v1, p1, v3

    if-nez v1, :cond_0

    aget v1, p1, v2

    if-nez v1, :cond_0

    const/4 p1, 0x0

    .line 1069
    iput-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->lastCalibrationDateAndTime:Ljava/util/Calendar;

    .line 1070
    iget-object p1, p0, Lcom/senseonics/model/TransmitterStateModel;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-wide/16 v0, 0x0

    const-string v2, "LastCalibration"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 1072
    :cond_0
    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->lastCalibrationDateAndTime:Ljava/util/Calendar;

    if-nez v1, :cond_1

    .line 1074
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    :cond_1
    const-string v4, "GMT"

    .line 1076
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1077
    aget v4, p1, v0

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 1078
    aget v4, p1, v3

    sub-int/2addr v4, v3

    invoke-virtual {v1, v2, v4}, Ljava/util/Calendar;->set(II)V

    const/4 v3, 0x5

    .line 1079
    aget p1, p1, v2

    invoke-virtual {v1, v3, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xb

    .line 1080
    invoke-virtual {v1, p1, v0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    .line 1081
    invoke-virtual {v1, p1, v0}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xd

    .line 1082
    invoke-virtual {v1, p1, v0}, Ljava/util/Calendar;->set(II)V

    .line 1083
    iput-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->lastCalibrationDateAndTime:Ljava/util/Calendar;

    :goto_0
    return-void
.end method

.method public startCountDownTimer(J)V
    .locals 2

    .line 658
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/senseonics/model/TransmitterStateModel;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 659
    new-instance v1, Lcom/senseonics/model/TransmitterStateModel$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/senseonics/model/TransmitterStateModel$1;-><init>(Lcom/senseonics/model/TransmitterStateModel;J)V

    .line 673
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
