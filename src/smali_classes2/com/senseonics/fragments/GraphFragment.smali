.class public Lcom/senseonics/fragments/GraphFragment;
.super Lcom/senseonics/fragments/BaseFragment;
.source "GraphFragment.java"


# instance fields
.field private alertInfoHeight:I

.field private arrowImageView:Landroid/widget/ImageView;

.field private batteryStrengthImageView:Landroid/widget/ImageView;

.field public dialog:Landroid/app/Dialog;

.field private dndImageView:Landroid/widget/ImageView;

.field public expandImageButton:Landroid/widget/ImageButton;

.field private glucoseUnitTextView:Landroid/widget/TextView;

.field private glucoseValueDisplay:Landroid/widget/FrameLayout;

.field private glucoseValueTextView:Landroid/widget/TextView;

.field private graphHeight:I

.field private graphLayoutView:Landroid/widget/LinearLayout;

.field graphManager:Lcom/senseonics/graph/GraphManagerView$GraphManager;

.field public graphManagerView:Lcom/senseonics/graph/GraphManagerView;

.field private graphWidth:I

.field private layout:Landroid/widget/RelativeLayout;

.field lazyLoadGraphModel:Lcom/senseonics/graph/LazyLoadGraphModel;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field onDateClickListener:Landroid/view/View$OnClickListener;

.field public popupGraphManagerView:Lcom/senseonics/fragments/PopupGraphManagerView;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private signalStrengthImageView:Landroid/widget/ImageView;

.field private tempProfileImageView:Landroid/widget/ImageView;

.field private topLayout:Landroid/widget/LinearLayout;

.field private topLayoutHeight:I

.field private transmitterNameTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Lcom/senseonics/fragments/BaseFragment;-><init>()V

    .line 527
    new-instance v0, Lcom/senseonics/fragments/GraphFragment$7;

    invoke-direct {v0, p0}, Lcom/senseonics/fragments/GraphFragment$7;-><init>(Lcom/senseonics/fragments/GraphFragment;)V

    iput-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->onDateClickListener:Landroid/view/View$OnClickListener;

    .line 547
    new-instance v0, Lcom/senseonics/fragments/GraphFragment$8;

    invoke-direct {v0, p0}, Lcom/senseonics/fragments/GraphFragment$8;-><init>(Lcom/senseonics/fragments/GraphFragment;)V

    iput-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->graphManager:Lcom/senseonics/graph/GraphManagerView$GraphManager;

    return-void
.end method

.method static synthetic access$000(Lcom/senseonics/fragments/GraphFragment;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/senseonics/fragments/GraphFragment;->layout:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$100(Lcom/senseonics/fragments/GraphFragment;)I
    .locals 0

    .line 58
    iget p0, p0, Lcom/senseonics/fragments/GraphFragment;->topLayoutHeight:I

    return p0
.end method

.method static synthetic access$102(Lcom/senseonics/fragments/GraphFragment;I)I
    .locals 0

    .line 58
    iput p1, p0, Lcom/senseonics/fragments/GraphFragment;->topLayoutHeight:I

    return p1
.end method

.method static synthetic access$200(Lcom/senseonics/fragments/GraphFragment;)Landroid/widget/LinearLayout;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/senseonics/fragments/GraphFragment;->topLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$300(Lcom/senseonics/fragments/GraphFragment;)I
    .locals 0

    .line 58
    iget p0, p0, Lcom/senseonics/fragments/GraphFragment;->alertInfoHeight:I

    return p0
.end method

.method static synthetic access$302(Lcom/senseonics/fragments/GraphFragment;I)I
    .locals 0

    .line 58
    iput p1, p0, Lcom/senseonics/fragments/GraphFragment;->alertInfoHeight:I

    return p1
.end method

.method static synthetic access$402(Lcom/senseonics/fragments/GraphFragment;I)I
    .locals 0

    .line 58
    iput p1, p0, Lcom/senseonics/fragments/GraphFragment;->graphWidth:I

    return p1
.end method

.method static synthetic access$500(Lcom/senseonics/fragments/GraphFragment;)Landroid/widget/LinearLayout;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/senseonics/fragments/GraphFragment;->graphLayoutView:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$602(Lcom/senseonics/fragments/GraphFragment;I)I
    .locals 0

    .line 58
    iput p1, p0, Lcom/senseonics/fragments/GraphFragment;->graphHeight:I

    return p1
.end method

.method static synthetic access$700(Lcom/senseonics/fragments/GraphFragment;Landroid/app/Activity;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/senseonics/fragments/GraphFragment;->addGraphManagerView(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$800(Lcom/senseonics/fragments/GraphFragment;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/senseonics/fragments/GraphFragment;->addPopUpView()V

    return-void
.end method

.method static synthetic access$900(Lcom/senseonics/fragments/GraphFragment;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/senseonics/fragments/GraphFragment;->dismissProgressDialogIfNeeded()V

    return-void
.end method

.method private addGraph()V
    .locals 2

    .line 421
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 422
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 423
    new-instance v1, Lcom/senseonics/fragments/GraphFragment$3;

    invoke-direct {v1, p0}, Lcom/senseonics/fragments/GraphFragment$3;-><init>(Lcom/senseonics/fragments/GraphFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method private addGraphManagerView(Landroid/app/Activity;)V
    .locals 8

    .line 443
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->graphLayoutView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v0, 0x0

    .line 444
    iput-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->graphManagerView:Lcom/senseonics/graph/GraphManagerView;

    .line 447
    sget v0, Lcom/senseonics/util/Utils;->screenWidth:I

    const/16 v1, 0x15e

    if-le v0, v1, :cond_0

    .line 448
    sget v0, Lcom/senseonics/util/Utils;->screenWidth:I

    div-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 450
    :cond_0
    sget v0, Lcom/senseonics/util/Utils;->screenWidth:I

    div-int/lit8 v0, v0, 0x5

    :goto_0
    move v5, v0

    .line 452
    new-instance v0, Lcom/senseonics/graph/GraphManagerView;

    iget v3, p0, Lcom/senseonics/fragments/GraphFragment;->graphWidth:I

    iget v4, p0, Lcom/senseonics/fragments/GraphFragment;->graphHeight:I

    sget v6, Lcom/senseonics/util/Utils;->daysCount:I

    sget-object v7, Lcom/senseonics/util/Utils;->currentDate:Ljava/util/Calendar;

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/senseonics/graph/GraphManagerView;-><init>(Landroid/content/Context;IIIILjava/util/Calendar;)V

    iput-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->graphManagerView:Lcom/senseonics/graph/GraphManagerView;

    .line 453
    iget-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->graphLayoutView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 455
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->graphManagerView:Lcom/senseonics/graph/GraphManagerView;

    new-instance v1, Lcom/senseonics/fragments/GraphFragment$4;

    invoke-direct {v1, p0}, Lcom/senseonics/fragments/GraphFragment$4;-><init>(Lcom/senseonics/fragments/GraphFragment;)V

    invoke-virtual {v0, v1}, Lcom/senseonics/graph/GraphManagerView;->setGraphManagerViewListener(Lcom/senseonics/graph/GraphManagerView$GraphManagerViewListener;)V

    .line 468
    new-instance v0, Lcom/senseonics/fragments/GraphFragment$5;

    invoke-direct {v0, p0}, Lcom/senseonics/fragments/GraphFragment$5;-><init>(Lcom/senseonics/fragments/GraphFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private addPopUpView()V
    .locals 2

    .line 481
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->popupGraphManagerView:Lcom/senseonics/fragments/PopupGraphManagerView;

    if-eqz v0, :cond_0

    .line 482
    iget-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 483
    iput-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->popupGraphManagerView:Lcom/senseonics/fragments/PopupGraphManagerView;

    .line 486
    :cond_0
    new-instance v0, Lcom/senseonics/fragments/PopupGraphManagerView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/senseonics/fragments/PopupGraphManagerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->popupGraphManagerView:Lcom/senseonics/fragments/PopupGraphManagerView;

    const/16 v1, 0x8

    .line 487
    invoke-virtual {v0, v1}, Lcom/senseonics/fragments/PopupGraphManagerView;->setVisibility(I)V

    .line 488
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->layout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->popupGraphManagerView:Lcom/senseonics/fragments/PopupGraphManagerView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private createProgressDialogIfNeeded()V
    .locals 3

    .line 122
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->progressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f120229

    invoke-direct {v0, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->progressDialog:Landroid/app/ProgressDialog;

    .line 124
    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0800a2

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 125
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    :cond_0
    return-void
.end method

.method private dismissProgressDialogIfNeeded()V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private refreshGlucosePanel()V
    .locals 2

    .line 153
    const-class v0, Lcom/senseonics/fragments/GraphFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "in refreshGlucosePanel"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-direct {p0}, Lcom/senseonics/fragments/GraphFragment;->setGlucoseLevel()V

    .line 156
    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->setSignalStrength()V

    .line 157
    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->setBatteryLevel()V

    .line 158
    invoke-direct {p0}, Lcom/senseonics/fragments/GraphFragment;->setTempProfileIcon()V

    .line 159
    invoke-direct {p0}, Lcom/senseonics/fragments/GraphFragment;->setDNDIcon()V

    return-void
.end method

.method private setDNDIcon()V
    .locals 2

    .line 348
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->dndImageView:Landroid/widget/ImageView;

    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->showDndIcon()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->isVibrateMode()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/senseonics/fragments/GraphFragment;->updateIcon(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method private setDashTextBold(Landroid/widget/TextView;)V
    .locals 2

    .line 492
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    sget-object v1, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_UNKNOWN_STRING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "Fonts/Roboto-Bold.ttf"

    invoke-static {v0, v1}, Lcom/senseonics/util/TypefaceFetcher;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 495
    :cond_0
    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "Fonts/Roboto-Regular.ttf"

    invoke-static {v0, v1}, Lcom/senseonics/util/TypefaceFetcher;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_0
    return-void
.end method

.method private setGlucoseLevel()V
    .locals 7

    .line 236
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->glucoseValueTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09016b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->glucoseValueTextView:Landroid/widget/TextView;

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->glucoseValueTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    .line 242
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object v0

    sget-object v3, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 243
    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getSignalStrength()Lcom/senseonics/model/SIGNAL_STRENGTH;

    move-result-object v0

    sget-object v3, Lcom/senseonics/model/SIGNAL_STRENGTH;->NO_SIGNAL:Lcom/senseonics/model/SIGNAL_STRENGTH;

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v1

    .line 249
    :goto_1
    invoke-virtual {p0, v0}, Lcom/senseonics/fragments/GraphFragment;->setArrowType(Z)Z

    move-result v3

    if-nez v0, :cond_3

    .line 255
    sget-object v4, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_UNKNOWN_STRING:Ljava/lang/String;

    :goto_2
    move v5, v1

    goto :goto_3

    .line 256
    :cond_3
    iget-object v4, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v4}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentAppAlertCodeFromState()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/senseonics/util/TransmitterMessageCode;->canBlindGlucose()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 257
    sget-object v4, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_UNKNOWN_STRING:Ljava/lang/String;

    goto :goto_2

    .line 258
    :cond_4
    iget-object v4, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v4}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentMessageCode()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v4

    sget-object v5, Lcom/senseonics/util/TransmitterMessageCode;->SeriouslyLowAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v4, v5, :cond_5

    .line 259
    sget-object v4, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_OUT_OF_RANGE_LOW_STRING:Ljava/lang/String;

    goto :goto_2

    .line 260
    :cond_5
    iget-object v4, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v4}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentMessageCode()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v4

    sget-object v5, Lcom/senseonics/util/TransmitterMessageCode;->SeriouslyHighAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v4, v5, :cond_6

    .line 261
    sget-object v4, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_OUT_OF_RANGE_HIGH_STRING:Ljava/lang/String;

    goto :goto_2

    .line 262
    :cond_6
    iget-object v4, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v4}, Lcom/senseonics/model/TransmitterStateModel;->isGlucoseLevelWithinRange()Z

    move-result v4

    if-nez v4, :cond_7

    .line 263
    sget-object v4, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_UNKNOWN_STRING:Ljava/lang/String;

    goto :goto_2

    .line 264
    :cond_7
    iget-object v4, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v4}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentMessageCode()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/senseonics/util/TransmitterMessageCode;->canBlindGlucose()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 265
    sget-object v4, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_UNKNOWN_STRING:Ljava/lang/String;

    goto :goto_2

    .line 266
    :cond_8
    iget-object v4, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v4}, Lcom/senseonics/model/TransmitterStateModel;->checkIfNonGlucoseShowingPhase()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 267
    sget-object v4, Lcom/senseonics/util/Utils;->GLUCOSE_LEVEL_UNKNOWN_STRING:Ljava/lang/String;

    goto :goto_2

    .line 269
    :cond_9
    iget-object v4, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v4}, Lcom/senseonics/model/TransmitterStateModel;->getGlucoseLevel()I

    move-result v4

    invoke-static {v4}, Lcom/senseonics/util/Utils;->getGlucoseLevelValue(I)Ljava/lang/String;

    move-result-object v4

    move v5, v2

    :goto_3
    if-eqz v0, :cond_b

    .line 274
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->enableDosing()Z

    move-result v6

    if-eqz v6, :cond_a

    if-eqz v5, :cond_a

    if-nez v3, :cond_a

    goto :goto_4

    :cond_a
    move v2, v1

    .line 283
    :cond_b
    :goto_4
    iget-object v3, p0, Lcom/senseonics/fragments/GraphFragment;->glucoseValueTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v3, p0, Lcom/senseonics/fragments/GraphFragment;->glucoseValueTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v2, :cond_c

    const v5, 0x7f060080

    goto :goto_5

    :cond_c
    const v5, 0x7f060021

    :goto_5
    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 285
    sget-object v3, Lcom/senseonics/util/Utils;->currentGlucoseUnit:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    sget-object v4, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MG_DL:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    if-ne v3, v4, :cond_d

    .line 286
    iget-object v3, p0, Lcom/senseonics/fragments/GraphFragment;->glucoseValueTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0700a7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v3, v1, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_6

    .line 288
    :cond_d
    iget-object v3, p0, Lcom/senseonics/fragments/GraphFragment;->glucoseValueTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0700a8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v3, v1, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 290
    :goto_6
    iget-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->glucoseValueTextView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/senseonics/fragments/GraphFragment;->setDashTextBold(Landroid/widget/TextView;)V

    move v1, v2

    move v2, v0

    .line 293
    :cond_e
    invoke-direct {p0, v1}, Lcom/senseonics/fragments/GraphFragment;->setGlucoseUnit(Z)V

    .line 294
    invoke-direct {p0, v2}, Lcom/senseonics/fragments/GraphFragment;->setTransmitterName(Z)V

    return-void
.end method

.method private setGlucoseUnit(Z)V
    .locals 2

    .line 327
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->glucoseUnitTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 328
    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/senseonics/util/Utils;->getGlucoseUnitString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 329
    iget-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->glucoseUnitTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->glucoseUnitTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz p1, :cond_0

    const p1, 0x7f060080

    goto :goto_0

    :cond_0
    const p1, 0x7f060021

    :goto_0
    invoke-static {v1, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method private setTempProfileIcon()V
    .locals 2

    .line 344
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->tempProfileImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->tempProfileManager:Lcom/senseonics/bluetoothle/TempProfileManager;

    invoke-virtual {v1}, Lcom/senseonics/bluetoothle/TempProfileManager;->getTempProfileEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/senseonics/fragments/GraphFragment;->updateIcon(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method private setTransmitterName(Z)V
    .locals 2

    .line 335
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterName()Ljava/lang/String;

    move-result-object v0

    .line 336
    iget-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterNameTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz p1, :cond_1

    const p1, 0x7f060021

    goto :goto_0

    :cond_1
    const p1, 0x7f060080

    :goto_0
    invoke-static {v1, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private showProgressDialogIfNeeded()V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_0
    return-void
.end method

.method private updateIcon(Landroid/widget/ImageView;Z)V
    .locals 2

    .line 354
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 362
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    const/16 p2, 0x8

    .line 364
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public createPickerViewDialog(Ljava/util/Calendar;)V
    .locals 6

    if-eqz p1, :cond_3

    .line 501
    new-instance v5, Lcom/senseonics/fragments/GraphFragment$6;

    invoke-direct {v5, p0}, Lcom/senseonics/fragments/GraphFragment$6;-><init>(Lcom/senseonics/fragments/GraphFragment;)V

    .line 510
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/senseonics/util/Utils;->getStartDateNew()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 511
    invoke-static {}, Lcom/senseonics/util/Utils;->getStartDateNew()Ljava/util/Calendar;

    move-result-object p1

    .line 513
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    sget-object v2, Lcom/senseonics/util/Utils;->currentDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 514
    sget-object p1, Lcom/senseonics/util/Utils;->currentDate:Ljava/util/Calendar;

    :cond_1
    move-object v2, p1

    .line 517
    iget-object p1, p0, Lcom/senseonics/fragments/GraphFragment;->dialog:Landroid/app/Dialog;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 518
    iget-object p1, p0, Lcom/senseonics/fragments/GraphFragment;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 521
    :cond_2
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Lcom/senseonics/util/Utils;->getStartDateNew()Ljava/util/Calendar;

    move-result-object v3

    sget-object v4, Lcom/senseonics/util/Utils;->currentDate:Ljava/util/Calendar;

    invoke-virtual/range {v0 .. v5}, Lcom/senseonics/bluetoothle/DialogUtils;->createDatePickerDialog(Landroid/content/Context;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Lcom/senseonics/util/dialogs/DateDialogManager;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/fragments/GraphFragment;->dialog:Landroid/app/Dialog;

    .line 523
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_3
    return-void
.end method

.method public getLayout()Landroid/widget/RelativeLayout;
    .locals 1

    .line 600
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->layout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method protected init(Landroid/view/View;Landroid/content/Context;)V
    .locals 1

    const p2, 0x7f090173

    .line 370
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/senseonics/fragments/GraphFragment;->layout:Landroid/widget/RelativeLayout;

    const p2, 0x7f090172

    .line 371
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/senseonics/fragments/GraphFragment;->graphLayoutView:Landroid/widget/LinearLayout;

    const p2, 0x7f090361

    .line 372
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/senseonics/fragments/GraphFragment;->topLayout:Landroid/widget/LinearLayout;

    const p2, 0x7f09016d

    .line 373
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/senseonics/fragments/GraphFragment;->glucoseValueDisplay:Landroid/widget/FrameLayout;

    .line 375
    new-instance v0, Lcom/senseonics/fragments/GraphFragment$1;

    invoke-direct {v0, p0}, Lcom/senseonics/fragments/GraphFragment$1;-><init>(Lcom/senseonics/fragments/GraphFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 382
    iget-object p2, p0, Lcom/senseonics/fragments/GraphFragment;->glucoseValueDisplay:Landroid/widget/FrameLayout;

    const v0, 0x7f0902db

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/senseonics/fragments/GraphFragment;->signalStrengthImageView:Landroid/widget/ImageView;

    .line 383
    iget-object p2, p0, Lcom/senseonics/fragments/GraphFragment;->glucoseValueDisplay:Landroid/widget/FrameLayout;

    const v0, 0x7f090099

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/senseonics/fragments/GraphFragment;->batteryStrengthImageView:Landroid/widget/ImageView;

    .line 384
    iget-object p2, p0, Lcom/senseonics/fragments/GraphFragment;->glucoseValueDisplay:Landroid/widget/FrameLayout;

    const v0, 0x7f09016b

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/senseonics/fragments/GraphFragment;->glucoseValueTextView:Landroid/widget/TextView;

    .line 385
    iget-object p2, p0, Lcom/senseonics/fragments/GraphFragment;->glucoseValueDisplay:Landroid/widget/FrameLayout;

    const v0, 0x7f09016a

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/senseonics/fragments/GraphFragment;->glucoseUnitTextView:Landroid/widget/TextView;

    .line 386
    iget-object p2, p0, Lcom/senseonics/fragments/GraphFragment;->glucoseValueDisplay:Landroid/widget/FrameLayout;

    const v0, 0x7f090064

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/senseonics/fragments/GraphFragment;->arrowImageView:Landroid/widget/ImageView;

    .line 387
    iget-object p2, p0, Lcom/senseonics/fragments/GraphFragment;->glucoseValueDisplay:Landroid/widget/FrameLayout;

    const v0, 0x7f090369

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterNameTextView:Landroid/widget/TextView;

    .line 388
    iget-object p2, p0, Lcom/senseonics/fragments/GraphFragment;->glucoseValueDisplay:Landroid/widget/FrameLayout;

    const v0, 0x7f09032a

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/senseonics/fragments/GraphFragment;->tempProfileImageView:Landroid/widget/ImageView;

    .line 389
    iget-object p2, p0, Lcom/senseonics/fragments/GraphFragment;->glucoseValueDisplay:Landroid/widget/FrameLayout;

    const v0, 0x7f09011a

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/senseonics/fragments/GraphFragment;->dndImageView:Landroid/widget/ImageView;

    const p2, 0x7f09014e

    .line 391
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/senseonics/fragments/GraphFragment;->expandImageButton:Landroid/widget/ImageButton;

    .line 392
    new-instance p2, Lcom/senseonics/fragments/GraphFragment$2;

    invoke-direct {p2, p0}, Lcom/senseonics/fragments/GraphFragment$2;-><init>(Lcom/senseonics/fragments/GraphFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClickGlucoseValueDisplay()V
    .locals 2

    .line 402
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->graphManagerView:Lcom/senseonics/graph/GraphManagerView;

    if-eqz v0, :cond_0

    .line 403
    sget-object v1, Lcom/senseonics/util/Utils;->currentDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Lcom/senseonics/graph/GraphManagerView;->setCurrentVisibleDate(Ljava/util/Calendar;)V

    .line 404
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->graphManagerView:Lcom/senseonics/graph/GraphManagerView;

    invoke-virtual {v0}, Lcom/senseonics/graph/GraphManagerView;->invalidate()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 594
    invoke-super {p0, p1}, Lcom/senseonics/fragments/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 595
    invoke-direct {p0}, Lcom/senseonics/fragments/GraphFragment;->addGraph()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 79
    invoke-super {p0, p1, p2, p3}, Lcom/senseonics/fragments/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const p2, 0x7f0c007d

    const/4 p3, 0x0

    .line 81
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 82
    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/senseonics/fragments/GraphFragment;->init(Landroid/view/View;Landroid/content/Context;)V

    const/4 p2, 0x0

    .line 83
    sput-boolean p2, Lcom/senseonics/graph/util/GraphUtils;->listPopUpIsVisible:Z

    return-object p1
.end method

.method public onDateClick()V
    .locals 1

    .line 537
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->graphManagerView:Lcom/senseonics/graph/GraphManagerView;

    if-eqz v0, :cond_0

    .line 538
    invoke-virtual {v0}, Lcom/senseonics/graph/GraphManagerView;->getCurrentVisibleDate()Ljava/util/Calendar;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 541
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 544
    :cond_1
    invoke-virtual {p0, v0}, Lcom/senseonics/fragments/GraphFragment;->createPickerViewDialog(Ljava/util/Calendar;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 117
    invoke-super {p0}, Lcom/senseonics/fragments/BaseFragment;->onDestroy()V

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/senseonics/util/IDestroyable;

    .line 118
    iget-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->graphManagerView:Lcom/senseonics/graph/GraphManagerView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/senseonics/util/Destroyer;->destroy([Lcom/senseonics/util/IDestroyable;)V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/ModelChangedRefreshGraphEvent;)V
    .locals 0

    .line 164
    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->refreshGraph()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/RefreshGraphEvent;)V
    .locals 0

    .line 185
    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->refreshGraph()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/TempProfileTurnedOffEvent;)V
    .locals 0

    .line 180
    invoke-direct {p0}, Lcom/senseonics/fragments/GraphFragment;->refreshGlucosePanel()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/model/ModelChangedEvent;)V
    .locals 0

    .line 168
    invoke-direct {p0}, Lcom/senseonics/fragments/GraphFragment;->refreshGlucosePanel()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 110
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 111
    invoke-direct {p0}, Lcom/senseonics/fragments/GraphFragment;->dismissProgressDialogIfNeeded()V

    .line 112
    invoke-super {p0}, Lcom/senseonics/fragments/BaseFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 90
    invoke-super {p0}, Lcom/senseonics/fragments/BaseFragment;->onResume()V

    .line 92
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->registerSticky(Ljava/lang/Object;)V

    .line 95
    invoke-direct {p0}, Lcom/senseonics/fragments/GraphFragment;->createProgressDialogIfNeeded()V

    .line 96
    invoke-direct {p0}, Lcom/senseonics/fragments/GraphFragment;->showProgressDialogIfNeeded()V

    .line 99
    invoke-direct {p0}, Lcom/senseonics/fragments/GraphFragment;->addGraph()V

    .line 100
    invoke-direct {p0}, Lcom/senseonics/fragments/GraphFragment;->refreshGlucosePanel()V

    .line 103
    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/senseonics/gen12androidapp/MainActivity;

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/senseonics/gen12androidapp/MainActivity;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MainActivity;->refreshAfterFragmentChanged()V

    :cond_0
    return-void
.end method

.method public refreshGraph()V
    .locals 1

    .line 409
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->lazyLoadGraphModel:Lcom/senseonics/graph/LazyLoadGraphModel;

    if-eqz v0, :cond_0

    .line 410
    invoke-virtual {v0}, Lcom/senseonics/graph/LazyLoadGraphModel;->refreshGraphWithExistingStartEndDates()V

    :cond_0
    return-void
.end method

.method setArrowType(Z)Z
    .locals 5

    .line 299
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getGlucoseTrendDirection()Lcom/senseonics/util/Utils$ARROW_TYPE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/senseonics/util/Utils$ARROW_TYPE;->getImageId()I

    move-result v0

    .line 300
    iget-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->arrowImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 303
    iget-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getGlucoseTrendDirection()Lcom/senseonics/util/Utils$ARROW_TYPE;

    move-result-object v1

    sget-object v3, Lcom/senseonics/util/Utils$ARROW_TYPE;->STALE:Lcom/senseonics/util/Utils$ARROW_TYPE;

    const/16 v4, 0xff

    if-eq v1, v3, :cond_1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 305
    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentMessageCode()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/senseonics/util/TransmitterMessageCode;->canBlindGlucose()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 306
    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentAppAlertCodeFromState()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/senseonics/util/TransmitterMessageCode;->canBlindGlucose()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 307
    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->isGlucoseLevelWithinRange()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 308
    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->checkIfNonGlucoseShowingPhase()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    move v1, p1

    move p1, v4

    goto :goto_1

    :cond_1
    :goto_0
    const/16 p1, 0x66

    move v1, v2

    .line 314
    :goto_1
    iget-object v3, p0, Lcom/senseonics/fragments/GraphFragment;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 315
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 316
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->removeStaleTrend()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 318
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->arrowImageView:Landroid/widget/ImageView;

    if-ge p1, v4, :cond_2

    const/4 v2, 0x4

    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 320
    :cond_3
    iget-object p1, p0, Lcom/senseonics/fragments/GraphFragment;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    move v2, v1

    :cond_4
    return v2
.end method

.method setBatteryLevel()V
    .locals 3

    .line 215
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->batteryStrengthImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/senseonics/fragments/GraphFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090099

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->batteryStrengthImageView:Landroid/widget/ImageView;

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->batteryStrengthImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 219
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getBatteryLevel()Lcom/senseonics/model/BATTERY_LEVEL;

    move-result-object v0

    invoke-static {v0}, Lcom/senseonics/util/Utils;->getImageForBatteryLevel(Lcom/senseonics/model/BATTERY_LEVEL;)I

    move-result v0

    .line 221
    iget-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object v1

    sget-object v2, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 222
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentMessageCode()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v1

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->CriticalFaultAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 224
    :cond_1
    iget-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentMessageCode()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v1

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->EmptyBatteryAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 225
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getBatteryLevel()Lcom/senseonics/model/BATTERY_LEVEL;

    move-result-object v1

    sget-object v2, Lcom/senseonics/model/BATTERY_LEVEL;->BL_0:Lcom/senseonics/model/BATTERY_LEVEL;

    if-ne v1, v2, :cond_4

    :cond_2
    const v0, 0x7f0800e7

    goto :goto_1

    :cond_3
    :goto_0
    const v0, 0x7f0800db

    :cond_4
    :goto_1
    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    .line 230
    iget-object v1, p0, Lcom/senseonics/fragments/GraphFragment;->batteryStrengthImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_5
    return-void
.end method

.method setSignalStrength()V
    .locals 5

    .line 189
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->signalStrengthImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 190
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getSignalStrength()Lcom/senseonics/model/SIGNAL_STRENGTH;

    move-result-object v0

    .line 192
    invoke-static {v0}, Lcom/senseonics/util/Utils;->getImageForSignalStrength(Lcom/senseonics/model/SIGNAL_STRENGTH;)I

    move-result v1

    .line 193
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->updateSensorSignalIconColor()Z

    move-result v2

    const v3, 0x7f080190

    if-eqz v2, :cond_1

    .line 194
    iget-object v2, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object v2

    sget-object v4, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-eq v2, v4, :cond_0

    const v1, 0x7f08018f

    goto :goto_1

    .line 196
    :cond_0
    sget-object v2, Lcom/senseonics/model/SIGNAL_STRENGTH;->NO_SIGNAL:Lcom/senseonics/model/SIGNAL_STRENGTH;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 197
    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentMessageCode()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v0

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->SensorAwolAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v0, v2, :cond_3

    goto :goto_0

    .line 201
    :cond_1
    sget-object v2, Lcom/senseonics/model/SIGNAL_STRENGTH;->NO_SIGNAL:Lcom/senseonics/model/SIGNAL_STRENGTH;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 202
    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentMessageCode()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v0

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->SensorAwolAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 203
    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getTransmitterConnectionState()Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    move-result-object v0

    sget-object v2, Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;->CONNECTED:Lcom/senseonics/bluetoothle/Transmitter$CONNECTION_STATE;

    if-eq v0, v2, :cond_3

    :cond_2
    :goto_0
    move v1, v3

    :cond_3
    :goto_1
    const/4 v0, -0x1

    if-eq v1, v0, :cond_4

    .line 209
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->signalStrengthImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_4
    return-void
.end method

.method public validateGraph()V
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/senseonics/fragments/GraphFragment;->lazyLoadGraphModel:Lcom/senseonics/graph/LazyLoadGraphModel;

    if-eqz v0, :cond_0

    .line 416
    invoke-virtual {v0}, Lcom/senseonics/graph/LazyLoadGraphModel;->refreshGraphWithNewStartEndDates()V

    :cond_0
    return-void
.end method
