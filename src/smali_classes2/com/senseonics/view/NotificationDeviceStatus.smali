.class public Lcom/senseonics/view/NotificationDeviceStatus;
.super Landroid/widget/LinearLayout;
.source "NotificationDeviceStatus.java"


# instance fields
.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-direct {p0, p1}, Lcom/senseonics/view/NotificationDeviceStatus;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    invoke-direct {p0, p1}, Lcom/senseonics/view/NotificationDeviceStatus;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    invoke-direct {p0, p1}, Lcom/senseonics/view/NotificationDeviceStatus;->init(Landroid/content/Context;)V

    return-void
.end method

.method private clearStatusDisplay()V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f060021

    .line 135
    invoke-direct {p0, v0}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/senseonics/view/NotificationDeviceStatus;->setBackgroundColor(I)V

    .line 136
    iget-object v0, p0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    const v1, 0x7f060074

    invoke-direct {p0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private displayNoSignal()V
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const v2, 0x7f1101eb

    invoke-direct {p0, v2, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f060021

    .line 99
    invoke-direct {p0, v0}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/senseonics/view/NotificationDeviceStatus;->setBackgroundColor(I)V

    .line 100
    iget-object v0, p0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    const v1, 0x7f060074

    invoke-direct {p0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private displayTransmitterConnectionStateInStatus(Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;)V
    .locals 4

    .line 116
    sget-object v0, Lcom/senseonics/view/NotificationDeviceStatus$2;->$SwitchMap$com$senseonics$bluetoothle$Transmitter$CONNECTION_STATE:[I

    invoke-virtual {p1}, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const v1, 0x7f060074

    const v2, 0x7f060021

    const/4 v3, 0x0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 126
    iget-object p1, p0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    const v0, 0x7f1101f0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0, v0, v3}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    invoke-direct {p0, v2}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/senseonics/view/NotificationDeviceStatus;->setBackgroundColor(I)V

    .line 128
    iget-object p1, p0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 120
    :cond_0
    iget-object p1, p0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    const v0, 0x7f110096

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0, v0, v3}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    invoke-direct {p0, v2}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/senseonics/view/NotificationDeviceStatus;->setBackgroundColor(I)V

    .line 122
    iget-object p1, p0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method private getColorInt(I)I
    .locals 1

    .line 56
    invoke-virtual {p0}, Lcom/senseonics/view/NotificationDeviceStatus;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method private getStatusTextForDailyCalibrationPhase(Lcom/senseonics/model/TransmitterStateModel;)Ljava/lang/String;
    .locals 4

    .line 348
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->showCollectingData()Z

    move-result v0

    const v1, 0x7f110214

    const-string v2, " "

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 349
    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->isGlucoseLevelWithinRange()Z

    move-result v0

    if-nez v0, :cond_0

    const p1, 0x7f11008c

    new-array v0, v3, [Ljava/lang/Object;

    .line 350
    invoke-direct {p0, p1, v0}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 352
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentPhase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array p1, v3, [Ljava/lang/Object;

    invoke-direct {p0, v1, p1}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 355
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentPhase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array p1, v3, [Ljava/lang/Object;

    invoke-direct {p0, v1, p1}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private varargs getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lcom/senseonics/view/NotificationDeviceStatus;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f0c00d4

    .line 48
    invoke-static {p1, v0, p0}, Lcom/senseonics/view/NotificationDeviceStatus;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f090338

    .line 49
    invoke-virtual {p0, p1}, Lcom/senseonics/view/NotificationDeviceStatus;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    const p1, 0x7f060021

    .line 50
    invoke-direct {p0, p1}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/senseonics/view/NotificationDeviceStatus;->setBackgroundColor(I)V

    .line 51
    iget-object p1, p0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    const v0, 0x7f060074

    invoke-direct {p0, v0}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private isNoSensorDetected(Lcom/senseonics/util/TransmitterMessageCode;Lcom/senseonics/model/SIGNAL_STRENGTH;)Z
    .locals 0

    .line 342
    sget-object p2, Lcom/senseonics/util/TransmitterMessageCode;->SensorAwolAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private updateCalibrationCountdown(J)V
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const-wide/16 v0, 0x3e8

    .line 141
    div-long/2addr p1, v0

    const-wide/16 v0, 0x3c

    .line 142
    div-long v2, p1, v0

    long-to-int v2, v2

    .line 143
    rem-long/2addr p1, v0

    long-to-int p1, p1

    const p2, 0x7f110044

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 144
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-direct {p0, p2, v0}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 145
    iget-object p2, p0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f060021

    .line 146
    invoke-direct {p0, p1}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/senseonics/view/NotificationDeviceStatus;->setBackgroundColor(I)V

    .line 147
    iget-object p1, p0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    const p2, 0x7f060074

    invoke-direct {p0, p2}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 149
    :cond_0
    invoke-direct {p0}, Lcom/senseonics/view/NotificationDeviceStatus;->clearStatusDisplay()V

    :goto_0
    return-void
.end method


# virtual methods
.method public getHoursLeftForWarmUpPhaseFormattedStr(Lcom/senseonics/model/TransmitterStateModel;)Ljava/lang/String;
    .locals 4

    .line 154
    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->getHoursLeftForWarmupPhase()I

    move-result p1

    const-string v0, ")"

    const/4 v1, 0x0

    const-string v2, " (< "

    if-nez p1, :cond_0

    .line 156
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f110177

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v2, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 157
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7f11014e

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, p1, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isDisplayingConnectionState()Z
    .locals 4

    .line 88
    iget-object v0, p0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const v3, 0x7f11003b

    invoke-direct {p0, v3, v2}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    .line 89
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const v2, 0x7f1101f0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {p0, v2, v3}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    .line 90
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const v2, 0x7f110096

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {p0, v2, v3}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 65
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 66
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->registerSticky(Ljava/lang/Object;)V

    .line 68
    new-instance v0, Lcom/senseonics/view/NotificationDeviceStatus$1;

    invoke-direct {v0, p0}, Lcom/senseonics/view/NotificationDeviceStatus$1;-><init>(Lcom/senseonics/view/NotificationDeviceStatus;)V

    invoke-virtual {p0, v0}, Lcom/senseonics/view/NotificationDeviceStatus;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 80
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 82
    invoke-virtual {p0, v0}, Lcom/senseonics/view/NotificationDeviceStatus;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/model/ModelChangedEvent;)V
    .locals 16

    move-object/from16 v0, p0

    .line 161
    invoke-virtual/range {p1 .. p1}, Lcom/senseonics/model/ModelChangedEvent;->getModel()Lcom/senseonics/model/TransmitterStateModel;

    move-result-object v1

    .line 162
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentMessageCode()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v2

    .line 163
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentAppAlertCodeFromState()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v3

    .line 166
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->enableDosing()Z

    move-result v4

    const v5, 0x7f110214

    const-wide/16 v6, 0x0

    const v8, 0x7f11008b

    const v9, 0x7f110219

    const v10, 0x7f1102f6

    const v11, 0x7f11003b

    const-string v15, " "

    const v13, 0x7f060074

    const v12, 0x7f060021

    const/4 v14, 0x0

    if-eqz v4, :cond_10

    .line 168
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->isBluetoothEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 169
    iget-object v1, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    new-array v2, v14, [Ljava/lang/Object;

    invoke-direct {v0, v11, v2}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    invoke-direct {v0, v12}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->setBackgroundColor(I)V

    .line 171
    iget-object v1, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-direct {v0, v13}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 174
    :cond_0
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object v4

    sget-object v11, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-eq v4, v11, :cond_1

    .line 175
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->displayTransmitterConnectionStateInStatus(Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;)V

    goto/16 :goto_0

    .line 178
    :cond_1
    sget-object v4, Lcom/senseonics/util/TransmitterMessageCode;->CriticalFaultAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v2, v4, :cond_2

    .line 179
    iget-object v1, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    new-array v2, v14, [Ljava/lang/Object;

    invoke-direct {v0, v10, v2}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    invoke-direct {v0, v12}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->setBackgroundColor(I)V

    .line 181
    iget-object v1, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-direct {v0, v13}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 183
    :cond_2
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getSignalStrength()Lcom/senseonics/model/SIGNAL_STRENGTH;

    move-result-object v4

    invoke-direct {v0, v2, v4}, Lcom/senseonics/view/NotificationDeviceStatus;->isNoSensorDetected(Lcom/senseonics/util/TransmitterMessageCode;Lcom/senseonics/model/SIGNAL_STRENGTH;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 184
    invoke-direct/range {p0 .. p0}, Lcom/senseonics/view/NotificationDeviceStatus;->displayNoSignal()V

    goto/16 :goto_0

    .line 185
    :cond_3
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->canCurrentAppAlertCodeBeReasonForBlinded()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 186
    iget-object v1, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/senseonics/util/TransmitterMessageCode;->getTitle()I

    move-result v4

    new-array v5, v14, [Ljava/lang/Object;

    invoke-direct {v0, v4, v5}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v3}, Lcom/senseonics/util/TransmitterMessageCode;->getType()I

    move-result v3

    new-array v4, v14, [Ljava/lang/Object;

    invoke-direct {v0, v3, v4}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 186
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    invoke-direct {v0, v12}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->setBackgroundColor(I)V

    .line 189
    iget-object v1, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-direct {v0, v13}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 190
    :cond_4
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->isPlacementModeInProgress()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 191
    invoke-direct {v0, v12}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->setBackgroundColor(I)V

    .line 192
    iget-object v1, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-direct {v0, v13}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 193
    iget-object v1, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    new-array v2, v14, [Ljava/lang/Object;

    invoke-direct {v0, v9, v2}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 194
    :cond_5
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->isClinicalMode()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 195
    iget-object v1, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    new-array v2, v14, [Ljava/lang/Object;

    invoke-direct {v0, v8, v2}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    invoke-direct {v0, v12}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->setBackgroundColor(I)V

    .line 197
    iget-object v1, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-direct {v0, v13}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 198
    :cond_6
    sget-object v3, Lcom/senseonics/util/TransmitterMessageCode;->NoAlarmActive:Lcom/senseonics/util/TransmitterMessageCode;

    if-eq v2, v3, :cond_7

    .line 199
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->canCurrentMessageCodeBeReasonForBlinded()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 200
    iget-object v1, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/senseonics/util/TransmitterMessageCode;->getTitle()I

    move-result v4

    new-array v5, v14, [Ljava/lang/Object;

    invoke-direct {v0, v4, v5}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v2}, Lcom/senseonics/util/TransmitterMessageCode;->getType()I

    move-result v2

    new-array v4, v14, [Ljava/lang/Object;

    invoke-direct {v0, v2, v4}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 200
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    invoke-direct {v0, v12}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->setBackgroundColor(I)V

    .line 203
    iget-object v1, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-direct {v0, v13}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 206
    :cond_7
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->isGlucoseLevelWithinRange()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getGlucoseLevel()I

    move-result v2

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getLowGlucoseAlarmThreshold()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 207
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getGlucoseLevel()I

    move-result v2

    .line 208
    invoke-virtual {v1, v2}, Lcom/senseonics/model/TransmitterStateModel;->getBackgroundColorForGlucose(I)I

    move-result v3

    invoke-direct {v0, v3}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/senseonics/view/NotificationDeviceStatus;->setBackgroundColor(I)V

    .line 209
    iget-object v3, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Lcom/senseonics/model/TransmitterStateModel;->getGlucoseLevelAlertText(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 210
    iget-object v3, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Lcom/senseonics/model/TransmitterStateModel;->getTextColorForGlucose(I)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 211
    :cond_8
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentCountdown()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-lez v2, :cond_9

    .line 212
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentCountdown()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/senseonics/view/NotificationDeviceStatus;->updateCalibrationCountdown(J)V

    goto/16 :goto_0

    .line 215
    :cond_9
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->isGlucoseLevelWithinRange()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getGlucoseTrendDirection()Lcom/senseonics/util/Utils$ARROW_TYPE;

    move-result-object v2

    sget-object v3, Lcom/senseonics/util/Utils$ARROW_TYPE;->STALE:Lcom/senseonics/util/Utils$ARROW_TYPE;

    if-ne v2, v3, :cond_a

    const v1, 0x7f060066

    .line 216
    invoke-direct {v0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->setBackgroundColor(I)V

    .line 217
    iget-object v1, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    const v2, 0x7f110316

    new-array v3, v14, [Ljava/lang/Object;

    invoke-direct {v0, v2, v3}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v1, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-direct {v0, v12}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 223
    :cond_a
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentCalibrationPhase()Lcom/senseonics/util/Utils$CAL_PHASE;

    move-result-object v2

    sget-object v3, Lcom/senseonics/util/Utils$CAL_PHASE;->WARM_UP:Lcom/senseonics/util/Utils$CAL_PHASE;

    if-ne v2, v3, :cond_b

    .line 224
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getSensorInsertionDateAndTime()Ljava/util/Calendar;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 225
    iget-object v2, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentPhase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v4, v14, [Ljava/lang/Object;

    invoke-direct {v0, v5, v4}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->getHoursLeftForWarmUpPhaseFormattedStr(Lcom/senseonics/model/TransmitterStateModel;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 225
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    invoke-direct {v0, v12}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->setBackgroundColor(I)V

    .line 228
    iget-object v1, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-direct {v0, v13}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 229
    :cond_b
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentCalibrationPhase()Lcom/senseonics/util/Utils$CAL_PHASE;

    move-result-object v2

    sget-object v3, Lcom/senseonics/util/Utils$CAL_PHASE;->INITIALIZATION:Lcom/senseonics/util/Utils$CAL_PHASE;

    if-ne v2, v3, :cond_c

    .line 230
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCalibrationsMadeInThisPhase()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_c

    .line 231
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCalibrationsRemaining()I

    move-result v2

    sget v3, Lcom/senseonics/model/TransmitterStateModel;->CALIBRATIONS_REQUIRED_BEFORE_GLUCOSE_IN_INITIALIZATION_PHASE:I

    if-le v2, v3, :cond_c

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 233
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCalibrationsRemaining()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v14

    const v1, 0x7f11015f

    invoke-direct {v0, v1, v2}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 234
    iget-object v2, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    invoke-direct {v0, v12}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->setBackgroundColor(I)V

    .line 236
    iget-object v1, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-direct {v0, v13}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 237
    :cond_c
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->isGlucoseLevelWithinRange()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 238
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getGlucoseLevel()I

    move-result v2

    .line 239
    invoke-virtual {v1, v2}, Lcom/senseonics/model/TransmitterStateModel;->getBackgroundColorForGlucose(I)I

    move-result v3

    invoke-direct {v0, v3}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/senseonics/view/NotificationDeviceStatus;->setBackgroundColor(I)V

    .line 240
    iget-object v3, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Lcom/senseonics/model/TransmitterStateModel;->getGlucoseLevelAlertText(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 241
    iget-object v3, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Lcom/senseonics/model/TransmitterStateModel;->getTextColorForGlucose(I)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 242
    :cond_d
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentCalibrationPhase()Lcom/senseonics/util/Utils$CAL_PHASE;

    move-result-object v2

    sget-object v3, Lcom/senseonics/util/Utils$CAL_PHASE;->INITIALIZATION:Lcom/senseonics/util/Utils$CAL_PHASE;

    if-ne v2, v3, :cond_e

    .line 243
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCalibrationsMadeInThisPhase()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_e

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 245
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCalibrationsRemaining()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v14

    const v1, 0x7f11015f

    invoke-direct {v0, v1, v2}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 246
    iget-object v2, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    invoke-direct {v0, v12}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->setBackgroundColor(I)V

    .line 248
    iget-object v1, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-direct {v0, v13}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 249
    :cond_e
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentCalibrationPhase()Lcom/senseonics/util/Utils$CAL_PHASE;

    move-result-object v2

    sget-object v3, Lcom/senseonics/util/Utils$CAL_PHASE;->DAILY_CALIBRATION:Lcom/senseonics/util/Utils$CAL_PHASE;

    if-ne v2, v3, :cond_f

    .line 250
    iget-object v2, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-direct {v0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->getStatusTextForDailyCalibrationPhase(Lcom/senseonics/model/TransmitterStateModel;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    invoke-direct {v0, v12}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->setBackgroundColor(I)V

    .line 252
    iget-object v1, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-direct {v0, v13}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 254
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/senseonics/view/NotificationDeviceStatus;->clearStatusDisplay()V

    goto/16 :goto_0

    .line 260
    :cond_10
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->isBluetoothEnabled()Z

    move-result v4

    if-nez v4, :cond_11

    .line 261
    iget-object v1, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    new-array v2, v14, [Ljava/lang/Object;

    invoke-direct {v0, v11, v2}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    invoke-direct {v0, v12}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->setBackgroundColor(I)V

    .line 263
    iget-object v1, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-direct {v0, v13}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 266
    :cond_11
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object v4

    sget-object v11, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-eq v4, v11, :cond_12

    .line 267
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->displayTransmitterConnectionStateInStatus(Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;)V

    goto/16 :goto_0

    .line 270
    :cond_12
    sget-object v4, Lcom/senseonics/util/TransmitterMessageCode;->CriticalFaultAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v2, v4, :cond_13

    .line 271
    iget-object v1, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    new-array v2, v14, [Ljava/lang/Object;

    invoke-direct {v0, v10, v2}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    invoke-direct {v0, v12}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->setBackgroundColor(I)V

    .line 273
    iget-object v1, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-direct {v0, v13}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 275
    :cond_13
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getSignalStrength()Lcom/senseonics/model/SIGNAL_STRENGTH;

    move-result-object v4

    invoke-direct {v0, v2, v4}, Lcom/senseonics/view/NotificationDeviceStatus;->isNoSensorDetected(Lcom/senseonics/util/TransmitterMessageCode;Lcom/senseonics/model/SIGNAL_STRENGTH;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 276
    invoke-direct/range {p0 .. p0}, Lcom/senseonics/view/NotificationDeviceStatus;->displayNoSignal()V

    goto/16 :goto_0

    .line 277
    :cond_14
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->canCurrentAppAlertCodeBeReasonForBlinded()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 278
    iget-object v1, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/senseonics/util/TransmitterMessageCode;->getTitle()I

    move-result v4

    new-array v5, v14, [Ljava/lang/Object;

    invoke-direct {v0, v4, v5}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    invoke-virtual {v3}, Lcom/senseonics/util/TransmitterMessageCode;->getType()I

    move-result v3

    new-array v4, v14, [Ljava/lang/Object;

    invoke-direct {v0, v3, v4}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 278
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    invoke-direct {v0, v12}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->setBackgroundColor(I)V

    .line 281
    iget-object v1, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-direct {v0, v13}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 282
    :cond_15
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->isPlacementModeInProgress()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 283
    invoke-direct {v0, v12}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->setBackgroundColor(I)V

    .line 284
    iget-object v1, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-direct {v0, v13}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 285
    iget-object v1, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    new-array v2, v14, [Ljava/lang/Object;

    invoke-direct {v0, v9, v2}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 286
    :cond_16
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->isClinicalMode()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 287
    iget-object v1, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    new-array v2, v14, [Ljava/lang/Object;

    invoke-direct {v0, v8, v2}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    invoke-direct {v0, v12}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->setBackgroundColor(I)V

    .line 289
    iget-object v1, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-direct {v0, v13}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 290
    :cond_17
    sget-object v3, Lcom/senseonics/util/TransmitterMessageCode;->NoAlarmActive:Lcom/senseonics/util/TransmitterMessageCode;

    if-eq v2, v3, :cond_18

    .line 291
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->canCurrentMessageCodeBeReasonForBlinded()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 292
    iget-object v1, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/senseonics/util/TransmitterMessageCode;->getTitle()I

    move-result v4

    new-array v5, v14, [Ljava/lang/Object;

    invoke-direct {v0, v4, v5}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-virtual {v2}, Lcom/senseonics/util/TransmitterMessageCode;->getType()I

    move-result v2

    new-array v4, v14, [Ljava/lang/Object;

    invoke-direct {v0, v2, v4}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 292
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    invoke-direct {v0, v12}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->setBackgroundColor(I)V

    .line 295
    iget-object v1, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-direct {v0, v13}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 296
    :cond_18
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentCountdown()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-lez v2, :cond_19

    .line 297
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentCountdown()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/senseonics/view/NotificationDeviceStatus;->updateCalibrationCountdown(J)V

    goto/16 :goto_0

    .line 302
    :cond_19
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentCalibrationPhase()Lcom/senseonics/util/Utils$CAL_PHASE;

    move-result-object v2

    sget-object v3, Lcom/senseonics/util/Utils$CAL_PHASE;->WARM_UP:Lcom/senseonics/util/Utils$CAL_PHASE;

    if-ne v2, v3, :cond_1a

    .line 303
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getSensorInsertionDateAndTime()Ljava/util/Calendar;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 304
    iget-object v2, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentPhase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v4, v14, [Ljava/lang/Object;

    invoke-direct {v0, v5, v4}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    invoke-virtual {v0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->getHoursLeftForWarmUpPhaseFormattedStr(Lcom/senseonics/model/TransmitterStateModel;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 304
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    invoke-direct {v0, v12}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->setBackgroundColor(I)V

    .line 307
    iget-object v1, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-direct {v0, v13}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 308
    :cond_1a
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentCalibrationPhase()Lcom/senseonics/util/Utils$CAL_PHASE;

    move-result-object v2

    sget-object v3, Lcom/senseonics/util/Utils$CAL_PHASE;->INITIALIZATION:Lcom/senseonics/util/Utils$CAL_PHASE;

    if-ne v2, v3, :cond_1b

    .line 309
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCalibrationsMadeInThisPhase()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1b

    .line 310
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCalibrationsRemaining()I

    move-result v2

    sget v3, Lcom/senseonics/model/TransmitterStateModel;->CALIBRATIONS_REQUIRED_BEFORE_GLUCOSE_IN_INITIALIZATION_PHASE:I

    if-le v2, v3, :cond_1b

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 312
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCalibrationsRemaining()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v14

    const v1, 0x7f11015f

    invoke-direct {v0, v1, v2}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 313
    iget-object v2, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    invoke-direct {v0, v12}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->setBackgroundColor(I)V

    .line 315
    iget-object v1, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-direct {v0, v13}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 316
    :cond_1b
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->isGlucoseLevelWithinRange()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 317
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getGlucoseLevel()I

    move-result v2

    .line 318
    invoke-virtual {v1, v2}, Lcom/senseonics/model/TransmitterStateModel;->getBackgroundColorForGlucose(I)I

    move-result v3

    invoke-direct {v0, v3}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/senseonics/view/NotificationDeviceStatus;->setBackgroundColor(I)V

    .line 319
    iget-object v3, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Lcom/senseonics/model/TransmitterStateModel;->getGlucoseLevelAlertText(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 320
    iget-object v3, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Lcom/senseonics/model/TransmitterStateModel;->getTextColorForGlucose(I)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 321
    :cond_1c
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentCalibrationPhase()Lcom/senseonics/util/Utils$CAL_PHASE;

    move-result-object v2

    sget-object v3, Lcom/senseonics/util/Utils$CAL_PHASE;->INITIALIZATION:Lcom/senseonics/util/Utils$CAL_PHASE;

    if-ne v2, v3, :cond_1d

    .line 322
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCalibrationsMadeInThisPhase()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1d

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 324
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCalibrationsRemaining()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v14

    const v1, 0x7f11015f

    invoke-direct {v0, v1, v2}, Lcom/senseonics/view/NotificationDeviceStatus;->getStringFromResInt(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 325
    iget-object v2, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    invoke-direct {v0, v12}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->setBackgroundColor(I)V

    .line 327
    iget-object v1, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-direct {v0, v13}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 328
    :cond_1d
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentCalibrationPhase()Lcom/senseonics/util/Utils$CAL_PHASE;

    move-result-object v2

    sget-object v3, Lcom/senseonics/util/Utils$CAL_PHASE;->DAILY_CALIBRATION:Lcom/senseonics/util/Utils$CAL_PHASE;

    if-ne v2, v3, :cond_1e

    .line 329
    iget-object v2, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-direct {v0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->getStatusTextForDailyCalibrationPhase(Lcom/senseonics/model/TransmitterStateModel;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    invoke-direct {v0, v12}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/senseonics/view/NotificationDeviceStatus;->setBackgroundColor(I)V

    .line 331
    iget-object v1, v0, Lcom/senseonics/view/NotificationDeviceStatus;->textView:Landroid/widget/TextView;

    invoke-direct {v0, v13}, Lcom/senseonics/view/NotificationDeviceStatus;->getColorInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 333
    :cond_1e
    invoke-direct/range {p0 .. p0}, Lcom/senseonics/view/NotificationDeviceStatus;->clearStatusDisplay()V

    :goto_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 111
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 112
    const-class p1, Lcom/senseonics/view/NotificationDeviceStatus;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onRestoreInstanceState"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 105
    const-class v0, Lcom/senseonics/view/NotificationDeviceStatus;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method
