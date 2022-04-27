.class public Lcom/senseonics/model/SyncParser;
.super Ljava/lang/Object;
.source "SyncParser.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private databaseManager:Lcom/senseonics/db/DatabaseManager;

.field private eventBus:Lde/greenrobot/event/EventBus;

.field private model:Lcom/senseonics/model/TransmitterStateModel;

.field private sharedPreferences:Landroid/content/SharedPreferences;

.field private syncModel:Lcom/senseonics/model/SyncModel;


# direct methods
.method public constructor <init>(Lcom/senseonics/model/SyncModel;Lcom/senseonics/model/TransmitterStateModel;Lcom/senseonics/db/DatabaseManager;Landroid/content/SharedPreferences;Lde/greenrobot/event/EventBus;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/senseonics/model/SyncParser;->syncModel:Lcom/senseonics/model/SyncModel;

    .line 49
    iput-object p2, p0, Lcom/senseonics/model/SyncParser;->model:Lcom/senseonics/model/TransmitterStateModel;

    .line 50
    iput-object p3, p0, Lcom/senseonics/model/SyncParser;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    .line 51
    iput-object p4, p0, Lcom/senseonics/model/SyncParser;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 52
    iput-object p5, p0, Lcom/senseonics/model/SyncParser;->eventBus:Lde/greenrobot/event/EventBus;

    .line 53
    invoke-virtual {p5, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method private afterSyncDataParsed()V
    .locals 4

    .line 369
    iget-object v0, p0, Lcom/senseonics/model/SyncParser;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/events/SyncingProgressUpdateEvent;

    invoke-direct {v1}, Lcom/senseonics/events/SyncingProgressUpdateEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 370
    iget-object v0, p0, Lcom/senseonics/model/SyncParser;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/senseonics/events/ModelChangedRefreshGraphEvent;

    invoke-direct {v1}, Lcom/senseonics/events/ModelChangedRefreshGraphEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 374
    iget-object v0, p0, Lcom/senseonics/model/SyncParser;->syncModel:Lcom/senseonics/model/SyncModel;

    invoke-virtual {v0}, Lcom/senseonics/model/SyncModel;->isSyncFinished()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/senseonics/model/SyncParser;->syncModel:Lcom/senseonics/model/SyncModel;

    invoke-virtual {v0}, Lcom/senseonics/model/SyncModel;->isSyncing()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 383
    invoke-static {}, Lcom/senseonics/util/Utils;->getLocalTimeInMillisAdjustedToGMT()J

    move-result-wide v0

    .line 384
    iget-object v2, p0, Lcom/senseonics/model/SyncParser;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "last_syncing_gmt_millis"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    return-void
.end method

.method private parseReadAllSensorGlucoseAlertsInSpecifiedRangeResponseData([I)V
    .locals 13

    const/4 v0, 0x1

    .line 174
    aget v1, p1, v0

    const/4 v2, 0x2

    aget v3, p1, v2

    const/16 v4, 0x8

    shl-int/2addr v3, v4

    or-int v6, v1, v3

    new-array v1, v2, [I

    const/4 v3, 0x3

    .line 176
    aget v3, p1, v3

    const/4 v5, 0x0

    aput v3, v1, v5

    const/4 v3, 0x4

    aget v3, p1, v3

    aput v3, v1, v0

    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->calculateDateFromBytes([I)[I

    move-result-object v7

    new-array v1, v2, [I

    const/4 v2, 0x5

    .line 177
    aget v2, p1, v2

    aput v2, v1, v5

    const/4 v2, 0x6

    aget v2, p1, v2

    aput v2, v1, v0

    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->calculateTimeFromBytes([I)[I

    move-result-object v8

    const/4 v1, 0x7

    .line 178
    aget v9, p1, v1

    .line 179
    aget v1, p1, v4

    const/16 v2, 0x9

    aget v2, p1, v2

    shl-int/2addr v2, v4

    or-int v10, v1, v2

    const/16 v1, 0xa

    .line 180
    aget v1, p1, v1

    const/16 v2, 0xb

    aget v2, p1, v2

    shl-int/2addr v2, v4

    or-int v11, v1, v2

    const/16 v1, 0xc

    .line 181
    aget v1, p1, v1

    const/16 v2, 0xd

    aget p1, p1, v2

    shl-int/2addr p1, v4

    or-int v12, v1, p1

    .line 184
    iget-object p1, p0, Lcom/senseonics/model/SyncParser;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->getMaxSyncedAlertRecord()I

    move-result p1

    add-int/2addr p1, v0

    if-ne v6, p1, :cond_0

    .line 185
    iget-object p1, p0, Lcom/senseonics/model/SyncParser;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1, v6}, Lcom/senseonics/model/TransmitterStateModel;->setMaxSyncedAlertRecord(I)V

    :cond_0
    move-object v5, p0

    .line 188
    invoke-direct/range {v5 .. v12}, Lcom/senseonics/model/SyncParser;->parsedReadAllSensorGlucoseAlertsInSpecifiedRangeResponse(I[I[IIIII)V

    return-void
.end method

.method private parseReadAllSensorGlucoseDataInSpecifiedRangeResponseData([I)V
    .locals 11

    const/4 v0, 0x1

    .line 82
    aget v1, p1, v0

    const/4 v2, 0x2

    aget v3, p1, v2

    const/16 v4, 0x8

    shl-int/2addr v3, v4

    or-int/2addr v1, v3

    const/4 v3, 0x3

    aget v3, p1, v3

    shl-int/lit8 v3, v3, 0x10

    or-int v6, v1, v3

    new-array v1, v2, [I

    const/4 v3, 0x4

    .line 84
    aget v3, p1, v3

    const/4 v5, 0x0

    aput v3, v1, v5

    const/4 v3, 0x5

    aget v3, p1, v3

    aput v3, v1, v0

    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->calculateDateFromBytes([I)[I

    move-result-object v7

    new-array v1, v2, [I

    const/4 v2, 0x6

    .line 85
    aget v2, p1, v2

    aput v2, v1, v5

    const/4 v2, 0x7

    aget v2, p1, v2

    aput v2, v1, v0

    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->calculateTimeFromBytes([I)[I

    move-result-object v8

    .line 86
    aget v1, p1, v4

    const/16 v2, 0x9

    aget v2, p1, v2

    shl-int/2addr v2, v4

    or-int v9, v1, v2

    const/16 v1, 0xa

    .line 87
    aget v10, p1, v1

    .line 90
    iget-object p1, p0, Lcom/senseonics/model/SyncParser;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->getMaxSyncedSensorRecord()I

    move-result p1

    add-int/2addr p1, v0

    if-ne v6, p1, :cond_0

    .line 91
    iget-object p1, p0, Lcom/senseonics/model/SyncParser;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1, v6}, Lcom/senseonics/model/TransmitterStateModel;->setMaxSyncedSensorRecord(I)V

    :cond_0
    move-object v5, p0

    .line 94
    invoke-direct/range {v5 .. v10}, Lcom/senseonics/model/SyncParser;->parsedReadAllSensorGlucoseDataInSpecifiedRangeResponse(I[I[III)V

    return-void
.end method

.method private parseReadLogOfBloodGlucoseDataInSpecifiedRangeResponseData([I)V
    .locals 13

    const/4 v0, 0x1

    .line 228
    aget v1, p1, v0

    const/4 v2, 0x2

    aget v3, p1, v2

    const/16 v4, 0x8

    shl-int/2addr v3, v4

    or-int v6, v1, v3

    new-array v1, v2, [I

    const/4 v3, 0x3

    .line 230
    aget v3, p1, v3

    const/4 v5, 0x0

    aput v3, v1, v5

    const/4 v3, 0x4

    aget v3, p1, v3

    aput v3, v1, v0

    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->calculateDateFromBytes([I)[I

    move-result-object v7

    new-array v1, v2, [I

    const/4 v2, 0x5

    .line 231
    aget v2, p1, v2

    aput v2, v1, v5

    const/4 v2, 0x6

    aget v2, p1, v2

    aput v2, v1, v0

    invoke-static {v1}, Lcom/senseonics/bluetoothle/BinaryOperations;->calculateTimeFromBytes([I)[I

    move-result-object v8

    const/4 v1, 0x7

    .line 232
    aget v1, p1, v1

    aget v2, p1, v4

    shl-int/2addr v2, v4

    or-int v9, v1, v2

    const/16 v1, 0x9

    .line 233
    aget v1, p1, v1

    const/16 v2, 0xa

    aget v2, p1, v2

    shl-int/2addr v2, v4

    or-int v10, v1, v2

    const/16 v1, 0xb

    .line 234
    aget v11, p1, v1

    const/16 v1, 0xc

    .line 235
    aget v1, p1, v1

    const/16 v2, 0xd

    aget v2, p1, v2

    shl-int/2addr v2, v4

    or-int/2addr v1, v2

    const/16 v2, 0xe

    aget p1, p1, v2

    shl-int/lit8 p1, p1, 0x10

    or-int v12, v1, p1

    .line 238
    iget-object p1, p0, Lcom/senseonics/model/SyncParser;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->getMaxSyncedBloodGlucoseRecord()I

    move-result p1

    add-int/2addr p1, v0

    if-ne v6, p1, :cond_0

    .line 239
    iget-object p1, p0, Lcom/senseonics/model/SyncParser;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1, v6}, Lcom/senseonics/model/TransmitterStateModel;->setMaxSyncedBloodGlucoseRecord(I)V

    :cond_0
    move-object v5, p0

    .line 242
    invoke-direct/range {v5 .. v12}, Lcom/senseonics/model/SyncParser;->parsedReadLogOfBloodGlucoseDataInSpecifiedRangeResponse(I[I[IIIII)V

    return-void
.end method

.method private parsedReadAllSensorGlucoseAlertsInSpecifiedRangeResponse(I[I[IIIII)V
    .locals 7

    .line 207
    invoke-static {p2, p3}, Lcom/senseonics/util/Utils;->getGMTCalendarFrom([I[I)Ljava/util/Calendar;

    move-result-object v3

    .line 208
    const-class p2, Lcom/senseonics/model/SyncingParsedResponse;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "GMT"

    invoke-static {p3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p3

    invoke-static {v3, p3}, Lcom/senseonics/util/TimeProvider;->debugDate(Ljava/util/Calendar;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const-class p2, Lcom/senseonics/model/SyncingParsedResponse;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sensorGlucoseAlertLogRecordType: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const-class p2, Lcom/senseonics/model/SyncingParsedResponse;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sensorGlucoseValue: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const-class p2, Lcom/senseonics/model/SyncingParsedResponse;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sensorGlucoseRateValue: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const-class p2, Lcom/senseonics/model/SyncingParsedResponse;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "alertThresholdOrTimeInterval: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const-class p2, Lcom/senseonics/model/SyncingParsedResponse;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :try_start_0
    invoke-static {p4}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->findBy(I)Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/model/SyncParser;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    move v2, p5

    move v4, p7

    move v5, p1

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/senseonics/model/ALERT_LOG_RECORD_TYPE;->save(Lcom/senseonics/db/DatabaseManager;ILjava/util/Calendar;III)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 220
    :catch_0
    const-class p1, Lcom/senseonics/model/SyncingParsedResponse;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "unexpected code from transmitter : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private parsedReadAllSensorGlucoseDataInSpecifiedRangeResponse(I[I[III)V
    .locals 18

    move-object/from16 v1, p0

    move/from16 v8, p1

    move/from16 v0, p4

    move/from16 v9, p5

    .line 110
    const-class v2, Lcom/senseonics/model/SyncingParsedResponse;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "<<<<<>>>>>"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 112
    aget v3, p2, v2

    const/4 v10, 0x1

    .line 113
    aget v4, p2, v10

    const/4 v11, 0x2

    .line 114
    aget v5, p2, v11

    .line 115
    aget v2, p3, v2

    .line 116
    aget v6, p3, v10

    .line 117
    aget v7, p3, v11

    .line 119
    invoke-static/range {p2 .. p3}, Lcom/senseonics/util/Utils;->getGMTCalendarFrom([I[I)Ljava/util/Calendar;

    move-result-object v12

    .line 120
    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    .line 122
    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v15

    .line 123
    invoke-virtual {v15}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v15

    .line 124
    sget-object v11, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    int-to-long v9, v15

    sget-object v15, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v11, v9, v10, v15}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v9

    long-to-int v9, v9

    int-to-long v9, v9

    .line 126
    sget-wide v16, Lcom/senseonics/graph/util/GraphUtils;->HOUR:J

    mul-long v9, v9, v16

    .line 127
    const-class v11, Lcom/senseonics/model/SyncingParsedResponse;

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-wide/from16 p2, v13

    const-string v13, " "

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    add-long/2addr v14, v9

    .line 130
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 131
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 132
    invoke-virtual {v9, v14, v15}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v10, 0x10

    .line 133
    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    int-to-long v10, v10

    .line 134
    const-class v14, Lcom/senseonics/model/SyncingParsedResponse;

    invoke-virtual {v14}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ---- "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    add-long/2addr v14, v10

    invoke-virtual {v9, v14, v15}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 137
    const-class v1, Lcom/senseonics/model/SyncingParsedResponse;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x5

    invoke-virtual {v12, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " //// "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " recordNumber: "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v1, p0

    .line 144
    :try_start_0
    iget-object v2, v1, Lcom/senseonics/model/SyncParser;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    move-wide/from16 v3, p2

    invoke-virtual {v2, v3, v4, v8}, Lcom/senseonics/db/DatabaseManager;->allowAddingGlucoseReading(JI)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "Add Glucose Database"

    .line 145
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sync: ADD NEW "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "|record:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v10, v1, Lcom/senseonics/model/SyncParser;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    new-instance v11, Lcom/senseonics/graph/util/Glucose;

    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    const/4 v6, -0x1

    move-object v2, v11

    move/from16 v5, p4

    move/from16 v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/senseonics/graph/util/Glucose;-><init>(JIII)V

    invoke-virtual {v10, v11}, Lcom/senseonics/db/DatabaseManager;->addReadingInGMT(Lcom/senseonics/graph/util/Glucose;)V

    .line 149
    sget-object v7, Lcom/senseonics/util/Utils$GLUCOSE_TYPE;->SENSOR_GLUCOSE:Lcom/senseonics/util/Utils$GLUCOSE_TYPE;

    const/4 v2, 0x0

    move/from16 v3, p5

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    :goto_0
    move-object v6, v2

    goto :goto_1

    .line 156
    :cond_0
    sget-object v2, Lcom/senseonics/util/Utils$ALERT_TYPE;->HIGH_GLUCOSE:Lcom/senseonics/util/Utils$ALERT_TYPE;

    goto :goto_0

    .line 153
    :cond_1
    sget-object v2, Lcom/senseonics/util/Utils$ALERT_TYPE;->LOW_GLUCOSE:Lcom/senseonics/util/Utils$ALERT_TYPE;

    goto :goto_0

    :goto_1
    if-eqz v6, :cond_2

    .line 160
    new-instance v10, Lcom/senseonics/events/AlertEventPoint;

    sget-object v3, Lcom/senseonics/util/Utils$EVENT_TYPE;->ALERT_EVENT:Lcom/senseonics/util/Utils$EVENT_TYPE;

    move-object v2, v10

    move-object v4, v9

    move/from16 v5, p4

    invoke-direct/range {v2 .. v7}, Lcom/senseonics/events/AlertEventPoint;-><init>(Lcom/senseonics/util/Utils$EVENT_TYPE;Ljava/util/Calendar;ILcom/senseonics/util/Utils$ALERT_TYPE;Lcom/senseonics/util/Utils$GLUCOSE_TYPE;)V

    .line 161
    iget-object v0, v1, Lcom/senseonics/model/SyncParser;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v10, v2}, Lcom/senseonics/db/DatabaseManager;->addEvent(Lcom/senseonics/events/EventPoint;Z)J
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 165
    const-class v2, Lcom/senseonics/model/SyncingParsedResponse;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_2
    :goto_2
    const-class v0, Lcom/senseonics/model/SyncingParsedResponse;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "glucoseRecordNumber: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private parsedReadLogOfBloodGlucoseDataInSpecifiedRangeResponse(I[I[IIIII)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v9, p4

    move/from16 v10, p6

    .line 261
    const-class v2, Lcom/senseonics/model/SyncingParsedResponse;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "---------------------------------"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-static/range {p2 .. p3}, Lcom/senseonics/util/Utils;->getGMTCalendarFrom([I[I)Ljava/util/Calendar;

    move-result-object v11

    .line 264
    const-class v2, Lcom/senseonics/model/SyncingParsedResponse;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GMT"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {v11, v3}, Lcom/senseonics/util/TimeProvider;->debugDate(Ljava/util/Calendar;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-static/range {p6 .. p6}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->fromId(I)Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    move-result-object v12

    .line 268
    const-class v2, Lcom/senseonics/model/SyncingParsedResponse;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BGM-> recordNumber: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", bloodGlucoseValue: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", meterIdentifier: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", calUseFlags: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v2, v0, Lcom/senseonics/model/SyncParser;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentCountdown()J

    move-result-wide v2

    const-wide/16 v5, 0x0

    cmp-long v2, v2, v5

    if-lez v2, :cond_0

    .line 272
    iget-object v2, v0, Lcom/senseonics/model/SyncParser;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "calibrationDateTime"

    invoke-interface {v2, v3, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 273
    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    sub-long/2addr v2, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x1e

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    cmp-long v2, v2, v5

    if-gez v2, :cond_0

    .line 274
    iget-object v2, v0, Lcom/senseonics/model/SyncParser;->model:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->cancelOngoingCalibration()V

    .line 279
    :cond_0
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->useNewBgmLogConversion()Z

    move-result v2

    const-string v13, "BGM-> calibrationNotes: "

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eqz v2, :cond_5

    sget-object v2, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->MARKED_SUSPICIOUS:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    invoke-virtual {v2}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->isCalibration()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 281
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->supportRollingCal()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 283
    invoke-virtual {v12}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->isCalibration()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 284
    new-instance v2, Lcom/senseonics/events/CalibrationEventPoint;

    invoke-direct {v2, v11, v9, v10}, Lcom/senseonics/events/CalibrationEventPoint;-><init>(Ljava/util/Calendar;II)V

    .line 285
    invoke-virtual {v2, v14}, Lcom/senseonics/events/CalibrationEventPoint;->setEventHidden(Z)V

    int-to-long v3, v1

    .line 286
    invoke-virtual {v2, v3, v4}, Lcom/senseonics/events/CalibrationEventPoint;->setRecordNumber(J)V

    .line 287
    iget-object v1, v0, Lcom/senseonics/model/SyncParser;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    invoke-virtual {v1, v2, v15}, Lcom/senseonics/db/DatabaseManager;->addSyncedCalibrationAndGlucoseEvent_NewCalConversion(Lcom/senseonics/events/EventPoint;Z)J

    goto/16 :goto_0

    .line 289
    :cond_1
    new-instance v2, Lcom/senseonics/events/GlucoseEventPoint;

    invoke-direct {v2, v11, v9, v10}, Lcom/senseonics/events/GlucoseEventPoint;-><init>(Ljava/util/Calendar;II)V

    .line 290
    invoke-virtual {v2, v14}, Lcom/senseonics/events/GlucoseEventPoint;->setEventHidden(Z)V

    int-to-long v3, v1

    .line 291
    invoke-virtual {v2, v3, v4}, Lcom/senseonics/events/GlucoseEventPoint;->setRecordNumber(J)V

    .line 292
    iget-object v1, v0, Lcom/senseonics/model/SyncParser;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    invoke-virtual {v1, v2, v15}, Lcom/senseonics/db/DatabaseManager;->addSyncedCalibrationAndGlucoseEvent_NewCalConversion(Lcom/senseonics/events/EventPoint;Z)J

    goto/16 :goto_0

    .line 297
    :cond_2
    sget-object v2, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->NOT_ENTERED_FOR_CALIBRATION:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    if-ne v12, v2, :cond_3

    .line 299
    iget-object v2, v0, Lcom/senseonics/model/SyncParser;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    .line 300
    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    sget-object v5, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->ACTUALLY_USED_FOR_CALIBRATION:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    .line 302
    invoke-virtual {v5}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->getId()I

    move-result v6

    sget-object v5, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->MARKED_SUSPICIOUS:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    .line 303
    invoke-virtual {v5}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->getId()I

    move-result v7

    sget-object v5, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->THIS_ONE_USED_PREVIOUS_ONE_DELETED:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    .line 304
    invoke-virtual {v5}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->getId()I

    move-result v8

    move/from16 v5, p4

    .line 299
    invoke-virtual/range {v2 .. v8}, Lcom/senseonics/db/DatabaseManager;->hideCalibrationEventAndGetNotesDuringSync(JIIII)Ljava/lang/String;

    move-result-object v4

    .line 306
    const-class v2, Lcom/senseonics/model/SyncingParsedResponse;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_3
    invoke-virtual {v12}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->isCalibration()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 310
    new-instance v2, Lcom/senseonics/events/CalibrationEventPoint;

    invoke-direct {v2, v11, v9, v10}, Lcom/senseonics/events/CalibrationEventPoint;-><init>(Ljava/util/Calendar;II)V

    .line 311
    invoke-virtual {v2, v14}, Lcom/senseonics/events/CalibrationEventPoint;->setEventHidden(Z)V

    int-to-long v3, v1

    .line 312
    invoke-virtual {v2, v3, v4}, Lcom/senseonics/events/CalibrationEventPoint;->setRecordNumber(J)V

    .line 313
    iget-object v1, v0, Lcom/senseonics/model/SyncParser;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    invoke-virtual {v1, v2, v15}, Lcom/senseonics/db/DatabaseManager;->addSyncedCalibrationAndGlucoseEvent(Lcom/senseonics/events/EventPoint;Z)J

    goto/16 :goto_0

    .line 315
    :cond_4
    new-instance v2, Lcom/senseonics/events/GlucoseEventPoint;

    invoke-direct {v2, v11, v9, v10, v4}, Lcom/senseonics/events/GlucoseEventPoint;-><init>(Ljava/util/Calendar;IILjava/lang/String;)V

    .line 316
    invoke-virtual {v2, v14}, Lcom/senseonics/events/GlucoseEventPoint;->setEventHidden(Z)V

    int-to-long v3, v1

    .line 317
    invoke-virtual {v2, v3, v4}, Lcom/senseonics/events/GlucoseEventPoint;->setRecordNumber(J)V

    .line 318
    iget-object v1, v0, Lcom/senseonics/model/SyncParser;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    invoke-virtual {v1, v2, v15}, Lcom/senseonics/db/DatabaseManager;->addSyncedCalibrationAndGlucoseEvent(Lcom/senseonics/events/EventPoint;Z)J

    goto/16 :goto_0

    .line 325
    :cond_5
    sget-object v2, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->NOT_ENTERED_FOR_CALIBRATION:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    if-ne v12, v2, :cond_6

    .line 327
    iget-object v2, v0, Lcom/senseonics/model/SyncParser;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    .line 328
    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    sget-object v5, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->ACTUALLY_USED_FOR_CALIBRATION:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    .line 330
    invoke-virtual {v5}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->getId()I

    move-result v6

    sget-object v5, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->THIS_ONE_USED_PREVIOUS_ONE_DELETED:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    .line 331
    invoke-virtual {v5}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->getId()I

    move-result v7

    move/from16 v5, p4

    .line 327
    invoke-virtual/range {v2 .. v7}, Lcom/senseonics/db/DatabaseManager;->hideCalibrationEventAndGetNotesDuringSync(JIII)Ljava/lang/String;

    move-result-object v4

    .line 333
    const-class v2, Lcom/senseonics/model/SyncingParsedResponse;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_6
    sget-object v2, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->ACTUALLY_USED_FOR_CALIBRATION:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    if-ne v12, v2, :cond_7

    add-int/lit8 v2, v1, -0x1

    .line 343
    new-instance v3, Lcom/senseonics/events/GlucoseEventPoint;

    sget-object v5, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->MARKED_SUSPICIOUS:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;

    invoke-virtual {v5}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->getId()I

    move-result v5

    invoke-direct {v3, v11, v14, v5}, Lcom/senseonics/events/GlucoseEventPoint;-><init>(Ljava/util/Calendar;II)V

    int-to-long v5, v2

    .line 344
    invoke-virtual {v3, v5, v6}, Lcom/senseonics/events/GlucoseEventPoint;->setRecordNumber(J)V

    .line 346
    iget-object v2, v0, Lcom/senseonics/model/SyncParser;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    invoke-virtual {v2, v3}, Lcom/senseonics/db/DatabaseManager;->convertSuspiciousGlucoseIntoCalibrationDuringSync(Lcom/senseonics/events/GlucoseEventPoint;)I

    move-result v2

    .line 347
    const-class v3, Lcom/senseonics/model/SyncingParsedResponse;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BGM->SuspiciousCheck | no of events updated : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_7
    invoke-virtual {v12}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->isCalibration()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 352
    new-instance v2, Lcom/senseonics/events/CalibrationEventPoint;

    invoke-direct {v2, v11, v9, v10}, Lcom/senseonics/events/CalibrationEventPoint;-><init>(Ljava/util/Calendar;II)V

    .line 353
    invoke-virtual {v2, v14}, Lcom/senseonics/events/CalibrationEventPoint;->setEventHidden(Z)V

    int-to-long v3, v1

    .line 354
    invoke-virtual {v2, v3, v4}, Lcom/senseonics/events/CalibrationEventPoint;->setRecordNumber(J)V

    .line 355
    iget-object v1, v0, Lcom/senseonics/model/SyncParser;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    invoke-virtual {v1, v2, v15}, Lcom/senseonics/db/DatabaseManager;->addSyncedCalibrationAndGlucoseEvent(Lcom/senseonics/events/EventPoint;Z)J

    goto :goto_0

    .line 357
    :cond_8
    new-instance v2, Lcom/senseonics/events/GlucoseEventPoint;

    invoke-direct {v2, v11, v9, v10, v4}, Lcom/senseonics/events/GlucoseEventPoint;-><init>(Ljava/util/Calendar;IILjava/lang/String;)V

    .line 358
    invoke-virtual {v2, v14}, Lcom/senseonics/events/GlucoseEventPoint;->setEventHidden(Z)V

    int-to-long v3, v1

    .line 359
    invoke-virtual {v2, v3, v4}, Lcom/senseonics/events/GlucoseEventPoint;->setRecordNumber(J)V

    .line 360
    iget-object v1, v0, Lcom/senseonics/model/SyncParser;->databaseManager:Lcom/senseonics/db/DatabaseManager;

    invoke-virtual {v1, v2, v15}, Lcom/senseonics/db/DatabaseManager;->addSyncedCalibrationAndGlucoseEvent(Lcom/senseonics/events/EventPoint;Z)J

    :goto_0
    return-void
.end method


# virtual methods
.method public onEventMainThread(Lcom/senseonics/events/SyncLogBatchProcessedEvent;)V
    .locals 5

    .line 57
    invoke-virtual {p1}, Lcom/senseonics/events/SyncLogBatchProcessedEvent;->getSensorGlucoseResponses()Ljava/util/TreeSet;

    move-result-object v0

    .line 58
    invoke-virtual {p1}, Lcom/senseonics/events/SyncLogBatchProcessedEvent;->getGlucoseAlertResponses()Ljava/util/TreeSet;

    move-result-object v1

    .line 59
    invoke-virtual {p1}, Lcom/senseonics/events/SyncLogBatchProcessedEvent;->getBloodGlucoseResponses()Ljava/util/TreeSet;

    move-result-object p1

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SyncLogBatchProcessedEvent : {"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/TreeSet;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SYNCING_DEBUG"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/senseonics/bluetoothle/Response;

    .line 64
    invoke-virtual {v2}, Lcom/senseonics/bluetoothle/Response;->getData()[I

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/senseonics/model/SyncParser;->parseReadAllSensorGlucoseDataInSpecifiedRangeResponseData([I)V

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/senseonics/bluetoothle/Response;

    .line 68
    invoke-virtual {v1}, Lcom/senseonics/bluetoothle/Response;->getData()[I

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/senseonics/model/SyncParser;->parseReadAllSensorGlucoseAlertsInSpecifiedRangeResponseData([I)V

    goto :goto_1

    .line 71
    :cond_1
    invoke-virtual {p1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/senseonics/bluetoothle/Response;

    .line 72
    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/Response;->getData()[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/senseonics/model/SyncParser;->parseReadLogOfBloodGlucoseDataInSpecifiedRangeResponseData([I)V

    goto :goto_2

    .line 75
    :cond_2
    invoke-direct {p0}, Lcom/senseonics/model/SyncParser;->afterSyncDataParsed()V

    return-void
.end method
