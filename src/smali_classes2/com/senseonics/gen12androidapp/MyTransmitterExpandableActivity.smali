.class public Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;
.super Lcom/senseonics/gen12androidapp/BaseMVPActivity;
.source "MyTransmitterExpandableActivity.java"

# interfaces
.implements Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;


# instance fields
.field batteryLevel:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090097
    .end annotation
.end field

.field batteryLevelText:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090098
    .end annotation
.end field

.field completedCal:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900d3
    .end annotation
.end field

.field completedCalText:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900d4
    .end annotation
.end field

.field currentPhase:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900ec
    .end annotation
.end field

.field currentPhaseText:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900ed
    .end annotation
.end field

.field firmwareVersion:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090157
    .end annotation
.end field

.field firmwareVersionText:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090158
    .end annotation
.end field

.field lastCal:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901b5
    .end annotation
.end field

.field lastCalText:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901b6
    .end annotation
.end field

.field modelNumber:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901f8
    .end annotation
.end field

.field modelNumberText:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901f9
    .end annotation
.end field

.field name:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09023a
    .end annotation
.end field

.field nameText:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09023b
    .end annotation
.end field

.field phaseStart:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090279
    .end annotation
.end field

.field phaseStartText:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09027a
    .end annotation
.end field

.field presenter:Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field rssi:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902af
    .end annotation
.end field

.field rssiLayout:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902b0
    .end annotation
.end field

.field rssiLayoutDivider:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902b1
    .end annotation
.end field

.field rssiText:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902b2
    .end annotation
.end field

.field serialNumber:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902cf
    .end annotation
.end field

.field serialNumberText:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902d0
    .end annotation
.end field

.field vibration:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090398
    .end annotation
.end field

.field vibrationText:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09039a
    .end annotation
.end field

.field private wasDetached:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/senseonics/gen12androidapp/BaseMVPActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachToPresenter()V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->presenter:Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;

    invoke-virtual {v0, p0}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->attach(Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;)V

    return-void
.end method

.method protected detachFromPresenter()V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->presenter:Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;->detach()V

    const/4 v0, 0x1

    .line 102
    iput-boolean v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->wasDetached:Z

    return-void
.end method

.method public getBluetoothService()Lcom/senseonics/bluetoothle/BluetoothService;
    .locals 1

    .line 107
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v0

    return-object v0
.end method

.method public getViewVisibilityByID(II)I
    .locals 0

    .line 177
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 178
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    return p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 82
    invoke-super {p0, p1}, Lcom/senseonics/gen12androidapp/BaseMVPActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0031

    .line 83
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->initializeLayout(I)Landroid/view/View;

    .line 85
    invoke-virtual {p0}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1101da

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->configureNaviBar(ILjava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 89
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->rssiLayout:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 90
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->rssiLayoutDivider:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public refreshRssi(Ljava/lang/String;)V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->rssi:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public refreshViews(ZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->nameText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 114
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->serialNumberText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 115
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->modelNumberText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 116
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->firmwareVersionText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 117
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->rssiText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 118
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->batteryLevelText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 119
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->lastCalText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 120
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->phaseStartText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 121
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->completedCalText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 122
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->currentPhaseText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 123
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->vibrationText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 126
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->name:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 127
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->serialNumber:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 128
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->modelNumber:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 129
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->firmwareVersion:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 130
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->rssi:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 131
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->batteryLevel:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 132
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->lastCal:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 133
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->phaseStart:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 134
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->completedCal:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 135
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->currentPhase:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 138
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->vibration:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 139
    iget-object p2, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->vibration:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 142
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->name:Landroid/widget/TextView;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->serialNumber:Landroid/widget/TextView;

    invoke-virtual {p1, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->modelNumber:Landroid/widget/TextView;

    invoke-virtual {p1, p6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->firmwareVersion:Landroid/widget/TextView;

    invoke-virtual {p1, p7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->batteryLevel:Landroid/widget/TextView;

    invoke-virtual {p1, p8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->lastCal:Landroid/widget/TextView;

    invoke-virtual {p1, p9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->phaseStart:Landroid/widget/TextView;

    invoke-virtual {p1, p10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->completedCal:Landroid/widget/TextView;

    invoke-virtual {p1, p11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->currentPhase:Landroid/widget/TextView;

    invoke-virtual {p1, p12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public rotateImageViewByDegree(III)V
    .locals 7

    .line 196
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 197
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 199
    new-instance p2, Landroid/view/animation/RotateAnimation;

    int-to-float v2, p3

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    const-wide/16 v0, 0x12c

    .line 200
    invoke-virtual {p2, v0, v1}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 201
    new-instance p3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p2, p3}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 p3, 0x1

    .line 202
    invoke-virtual {p2, p3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 203
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public setDemoButtonEnable(ZZ)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    .line 227
    :cond_0
    new-instance p2, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity$1;

    invoke-direct {p2, p0, p1}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity$1;-><init>(Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;Z)V

    invoke-virtual {p0, p2}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setImageViewWithImage(III)V
    .locals 0

    .line 189
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 190
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 191
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setViewVisibilityByID(III)V
    .locals 0

    .line 183
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 184
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setupDemoOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->vibration:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setupSectionExpandCollapse(IZ)V
    .locals 3

    .line 211
    iget-boolean v0, p0, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->wasDetached:Z

    if-nez v0, :cond_2

    .line 212
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f060107

    .line 213
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    const v0, 0x7f0900a5

    .line 214
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f090080

    .line 215
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p2, :cond_1

    const p2, 0x7f08010b

    goto :goto_1

    :cond_1
    const p2, 0x7f08010c

    .line 216
    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 217
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public setupTableSectionTapEvent(ILandroid/view/View$OnClickListener;)V
    .locals 1

    .line 167
    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/MyTransmitterExpandableActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f090177

    .line 168
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    new-instance p2, Landroid/animation/LayoutTransition;

    invoke-direct {p2}, Landroid/animation/LayoutTransition;-><init>()V

    const/4 v0, 0x4

    .line 171
    invoke-virtual {p2, v0}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 172
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void
.end method
