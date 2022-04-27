.class public Lcom/senseonics/model/ReadWriteHighGlucoseAlarmThresholdTwoByteMemoryMapParsedResponse;
.super Ljava/lang/Object;
.source "ReadWriteHighGlucoseAlarmThresholdTwoByteMemoryMapParsedResponse.java"

# interfaces
.implements Lcom/senseonics/model/TwoByteMemoryMapParsedResponse;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(IILcom/senseonics/model/TransmitterStateModel;)V
    .locals 1

    .line 22
    invoke-static {p1, p2}, Lcom/senseonics/bluetoothle/BinaryOperations;->dataIntFrom16BitsLSByteFirst(II)I

    move-result p1

    .line 23
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "high alarm: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Glucose thresholds"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-virtual {p3, p1}, Lcom/senseonics/model/TransmitterStateModel;->setHighGlucoseAlarmThreshold(I)V

    return-void
.end method

.method public getMemoryAddress()[I
    .locals 1

    .line 16
    sget-object v0, Lcom/senseonics/bluetoothle/MemoryMap;->highGlucoseAlarmThreshold:[I

    return-object v0
.end method
