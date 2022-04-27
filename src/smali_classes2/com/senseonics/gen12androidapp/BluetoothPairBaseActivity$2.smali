.class Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$2;
.super Ljava/lang/Object;
.source "BluetoothPairBaseActivity.java"

# interfaces
.implements Lcom/senseonics/bluetoothle/ResponseOperations$ReaderManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;


# direct methods
.method constructor <init>(Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$2;->this$0:Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parsedChangeTimingParametersResponse(I)V
    .locals 3

    .line 270
    const-class v0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<<<< "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >>>>"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public parsedMarkPatientEventRecordAsDeletedResponse(I)V
    .locals 0

    return-void
.end method

.method public parsedReadFirstAndLastErrorLogRecordNumbersResponse(II)V
    .locals 0

    return-void
.end method

.method public parsedReadFirstAndLastMiscEventLogRecordNumbersResponse(II)V
    .locals 0

    return-void
.end method

.method public parsedReadNByteSerialFlashRegisterResponse([II[I)V
    .locals 0

    return-void
.end method

.method public parsedReadSingleBloodGlucoseDataRecordResponse(I[I[IIIII)V
    .locals 0

    return-void
.end method

.method public parsedReadSingleMiscEventLogResponse(I[I[II[I)V
    .locals 0

    return-void
.end method

.method public parsedReadSinglePatientEventResponse(I[I[IIIII)V
    .locals 0

    return-void
.end method

.method public parsedReadSingleSensorGlucoseAlertRecordResponse(I[I[IIIII)V
    .locals 0

    return-void
.end method

.method public parsedReadSingleSensorGlucoseDataRecordResponseData(I[I[III)V
    .locals 0

    .line 278
    const-class p1, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "<<<<  >>>>"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public parsedReadTwoByteSerialFlashRegisterResponse([I[I)V
    .locals 3

    .line 252
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->clinicalModeDuration:[I

    invoke-static {p2, v0}, Lcom/senseonics/util/Utils;->areArraysEqual([I[I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 253
    invoke-static {p1}, Lcom/senseonics/bluetoothle/BinaryOperations;->dataIntFrom16BitsLSByteFirst([I)I

    move-result p1

    mul-int/lit8 p2, p1, 0x3c

    mul-int/lit8 p2, p2, 0x3c

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long v0, p2

    .line 254
    sput-wide v0, Lcom/senseonics/util/Utils;->clinicalModeDuration:J

    .line 255
    const-class p2, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Duration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/senseonics/util/Utils;->clinicalModeDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$2;->this$0:Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;

    iget-object p1, p1, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string p2, "ClinicalModeDuration"

    invoke-interface {p1, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 259
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$2;->this$0:Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;

    iget-object p1, p1, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 260
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 263
    :cond_0
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity$2;->this$0:Lcom/senseonics/gen12androidapp/BluetoothPairBaseActivity;

    sget-wide v0, Lcom/senseonics/util/Utils;->clinicalModeDuration:J

    invoke-static {p1, p2, v0, v1}, Lcom/senseonics/util/Utils;->saveSettings(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_1
    return-void
.end method
