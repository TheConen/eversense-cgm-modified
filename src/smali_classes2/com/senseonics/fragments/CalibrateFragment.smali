.class public Lcom/senseonics/fragments/CalibrateFragment;
.super Lcom/senseonics/fragments/BaseFragment;
.source "CalibrateFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/senseonics/fragments/CalibrateFragment$UpdateTimeTask;,
        Lcom/senseonics/fragments/CalibrateFragment$CalibrationManager;
    }
.end annotation


# instance fields
.field private final CALIBRATION_VIEW_REFRESH_INTERVAL:I

.field private arrowTips:Landroid/widget/ImageView;

.field private currentDate:Ljava/util/Calendar;

.field private dialog:Landroid/app/Dialog;

.field protected eventBus:Lde/greenrobot/event/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private glucoseLevel:I

.field private glucosePicker:Landroid/widget/RelativeLayout;

.field private glucoseTextView:Landroid/widget/TextView;

.field private glucoseValueSelected:Ljava/lang/Boolean;

.field private glucoseValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Item;",
            ">;"
        }
    .end annotation
.end field

.field private glucoseValuesMg:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/senseonics/util/Item;",
            ">;"
        }
    .end annotation
.end field

.field private glucose_label:Landroid/widget/TextView;

.field private glucose_selection_label:Landroid/widget/TextView;

.field private manager:Lcom/senseonics/fragments/CalibrateFragment$CalibrationManager;

.field private nextScheduleLabel:Landroid/widget/TextView;

.field private nextScheduleTextView:Landroid/widget/TextView;

.field private notesEditText:Landroid/widget/EditText;

.field private notesLabel:Landroid/widget/TextView;

.field private notesLayout:Landroid/widget/RelativeLayout;

.field private phaseLayout:Landroid/widget/LinearLayout;

.field private phaseTextView:Landroid/widget/TextView;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private sensorDaysSinceInsertionTextView:Landroid/widget/TextView;

.field private startDate:Ljava/util/Calendar;

.field private startingText:Ljava/lang/String;

.field private timePicker:Landroid/widget/RelativeLayout;

.field private timeTextView:Landroid/widget/TextView;

.field private timeValueSelected:Ljava/lang/Boolean;

.field private time_label:Landroid/widget/TextView;

.field private time_selection_label:Landroid/widget/TextView;

.field private timer:Ljava/util/Timer;

.field private tipsIsShowing:Z

.field private tvReadyForCalibration:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Lcom/senseonics/fragments/BaseFragment;-><init>()V

    const-string v0, "-----"

    .line 70
    iput-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->startingText:Ljava/lang/String;

    const v0, 0x1d4c0

    .line 113
    iput v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->CALIBRATION_VIEW_REFRESH_INTERVAL:I

    return-void
.end method

.method static synthetic access$000(Lcom/senseonics/fragments/CalibrateFragment;Landroid/widget/EditText;Landroid/app/Activity;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/senseonics/fragments/CalibrateFragment;->clearEditTextFocusAndHideKeyboard(Landroid/widget/EditText;Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$100(Lcom/senseonics/fragments/CalibrateFragment;)Ljava/util/Calendar;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/senseonics/fragments/CalibrateFragment;->currentDate:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/senseonics/fragments/CalibrateFragment;)Landroid/app/Dialog;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/senseonics/fragments/CalibrateFragment;->dialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/senseonics/fragments/CalibrateFragment;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment;->dialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$102(Lcom/senseonics/fragments/CalibrateFragment;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment;->currentDate:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/senseonics/fragments/CalibrateFragment;I)I
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/senseonics/fragments/CalibrateFragment;->getPosition(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/senseonics/fragments/CalibrateFragment;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tipsIsShowing:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/senseonics/fragments/CalibrateFragment;Z)Z
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/senseonics/fragments/CalibrateFragment;->tipsIsShowing:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/senseonics/fragments/CalibrateFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/senseonics/fragments/CalibrateFragment;->arrowTips:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/senseonics/fragments/CalibrateFragment;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/senseonics/fragments/CalibrateFragment;->hideProgressDialog()V

    return-void
.end method

.method static synthetic access$1600(Lcom/senseonics/fragments/CalibrateFragment;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/senseonics/fragments/CalibrateFragment;->fetchCalibrationStatus()V

    return-void
.end method

.method static synthetic access$1700(Lcom/senseonics/fragments/CalibrateFragment;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/senseonics/fragments/CalibrateFragment;->updateTimeTextView()V

    return-void
.end method

.method static synthetic access$200(Lcom/senseonics/fragments/CalibrateFragment;)I
    .locals 0

    .line 69
    iget p0, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucoseLevel:I

    return p0
.end method

.method static synthetic access$202(Lcom/senseonics/fragments/CalibrateFragment;I)I
    .locals 0

    .line 69
    iput p1, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucoseLevel:I

    return p1
.end method

.method static synthetic access$300(Lcom/senseonics/fragments/CalibrateFragment;)Landroid/widget/EditText;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/senseonics/fragments/CalibrateFragment;->notesEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$400(Lcom/senseonics/fragments/CalibrateFragment;)Lcom/senseonics/fragments/CalibrateFragment$CalibrationManager;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/senseonics/fragments/CalibrateFragment;->manager:Lcom/senseonics/fragments/CalibrateFragment$CalibrationManager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/senseonics/fragments/CalibrateFragment;Ljava/util/Calendar;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/senseonics/fragments/CalibrateFragment;->updateTimeWithCalendar(Ljava/util/Calendar;)V

    return-void
.end method

.method static synthetic access$600(Lcom/senseonics/fragments/CalibrateFragment;)Ljava/util/Calendar;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/senseonics/fragments/CalibrateFragment;->startDate:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$700(Lcom/senseonics/fragments/CalibrateFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucoseValues:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$802(Lcom/senseonics/fragments/CalibrateFragment;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucoseValueSelected:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$900(Lcom/senseonics/fragments/CalibrateFragment;Ljava/lang/String;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/senseonics/fragments/CalibrateFragment;->updateGlucoseTextWithString(Ljava/lang/String;)V

    return-void
.end method

.method private cancelRefreshTimer()V
    .locals 1

    .line 830
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 831
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 832
    iput-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->timer:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method private checkIfSubmitButtonNeedEnable()V
    .locals 3

    .line 583
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->timeTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucoseTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 584
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 585
    iget-object v1, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucoseTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 587
    iget-object v2, p0, Lcom/senseonics/fragments/CalibrateFragment;->startingText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->startingText:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 588
    invoke-direct {p0}, Lcom/senseonics/fragments/CalibrateFragment;->enableSubmitButton()V

    goto :goto_0

    .line 590
    :cond_0
    invoke-direct {p0}, Lcom/senseonics/fragments/CalibrateFragment;->disableSubmitButton()V

    :cond_1
    :goto_0
    return-void
.end method

.method private clearEditTextFocusAndHideKeyboard(Landroid/widget/EditText;Landroid/app/Activity;)V
    .locals 0

    .line 837
    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    .line 838
    invoke-direct {p0, p2}, Lcom/senseonics/fragments/CalibrateFragment;->hideKeyboard(Landroid/app/Activity;)V

    return-void
.end method

.method private disablePickersAndBottomLayout()V
    .locals 2

    .line 314
    invoke-direct {p0}, Lcom/senseonics/fragments/CalibrateFragment;->disableSubmitButton()V

    .line 317
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->timePicker:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 318
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->time_label:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/senseonics/fragments/CalibrateFragment;->setTextViewToGrayText(Landroid/widget/TextView;)V

    .line 319
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->time_selection_label:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/senseonics/fragments/CalibrateFragment;->setTextViewToGrayText(Landroid/widget/TextView;)V

    .line 321
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucosePicker:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 322
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucose_label:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/senseonics/fragments/CalibrateFragment;->setTextViewToGrayText(Landroid/widget/TextView;)V

    .line 323
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucose_selection_label:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/senseonics/fragments/CalibrateFragment;->setTextViewToGrayText(Landroid/widget/TextView;)V

    .line 326
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->notesLabel:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/senseonics/fragments/CalibrateFragment;->setTextViewToGrayText(Landroid/widget/TextView;)V

    .line 330
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->notesEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 333
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->timeTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/senseonics/fragments/CalibrateFragment;->stopBlinkTextView(Landroid/widget/TextView;)V

    .line 334
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucoseTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/senseonics/fragments/CalibrateFragment;->stopBlinkTextView(Landroid/widget/TextView;)V

    return-void
.end method

.method private disableSubmitButton()V
    .locals 4

    .line 273
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/senseonics/gen12androidapp/MainActivity;

    const v2, 0x7f060089

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 274
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/senseonics/gen12androidapp/MainActivity;

    .line 275
    iget-object v1, v0, Lcom/senseonics/gen12androidapp/MainActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 276
    iget-object v1, v0, Lcom/senseonics/gen12androidapp/MainActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 277
    iget-object v0, v0, Lcom/senseonics/gen12androidapp/MainActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 279
    :cond_0
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/senseonics/gen12androidapp/CalibrateActivity;

    if-ne v0, v1, :cond_1

    .line 280
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/senseonics/gen12androidapp/CalibrateActivity;

    .line 281
    iget-object v1, v0, Lcom/senseonics/gen12androidapp/CalibrateActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 282
    iget-object v1, v0, Lcom/senseonics/gen12androidapp/CalibrateActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 283
    iget-object v0, v0, Lcom/senseonics/gen12androidapp/CalibrateActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private enablePickersAndBottomLayout()V
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->timePicker:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 291
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->time_label:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/senseonics/fragments/CalibrateFragment;->setTextViewToBlackText(Landroid/widget/TextView;)V

    .line 292
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->time_selection_label:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/senseonics/fragments/CalibrateFragment;->setTextViewToBlackText(Landroid/widget/TextView;)V

    .line 294
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucosePicker:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 295
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucose_label:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/senseonics/fragments/CalibrateFragment;->setTextViewToBlackText(Landroid/widget/TextView;)V

    .line 296
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucose_selection_label:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/senseonics/fragments/CalibrateFragment;->setTextViewToBlackText(Landroid/widget/TextView;)V

    .line 299
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->notesLabel:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/senseonics/fragments/CalibrateFragment;->setTextViewToBlackText(Landroid/widget/TextView;)V

    .line 303
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->notesEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 306
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->timeTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/senseonics/fragments/CalibrateFragment;->startBlinkTextView(Landroid/widget/TextView;)V

    .line 307
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucoseTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/senseonics/fragments/CalibrateFragment;->startBlinkTextView(Landroid/widget/TextView;)V

    .line 310
    invoke-direct {p0}, Lcom/senseonics/fragments/CalibrateFragment;->checkIfSubmitButtonNeedEnable()V

    return-void
.end method

.method private enableSubmitButton()V
    .locals 4

    .line 256
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/senseonics/gen12androidapp/MainActivity;

    const v2, 0x106000b

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    .line 257
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/senseonics/gen12androidapp/MainActivity;

    .line 258
    iget-object v1, v0, Lcom/senseonics/gen12androidapp/MainActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 259
    iget-object v1, v0, Lcom/senseonics/gen12androidapp/MainActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 260
    iget-object v0, v0, Lcom/senseonics/gen12androidapp/MainActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 262
    :cond_0
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/senseonics/gen12androidapp/CalibrateActivity;

    if-ne v0, v1, :cond_1

    .line 263
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/senseonics/gen12androidapp/CalibrateActivity;

    .line 264
    iget-object v1, v0, Lcom/senseonics/gen12androidapp/CalibrateActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 265
    iget-object v1, v0, Lcom/senseonics/gen12androidapp/CalibrateActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 266
    iget-object v0, v0, Lcom/senseonics/gen12androidapp/CalibrateActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private fetchCalibrationStatus()V
    .locals 6

    .line 892
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 893
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 895
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 896
    new-instance v1, Lcom/senseonics/fragments/CalibrateFragment$9;

    invoke-direct {v1, p0}, Lcom/senseonics/fragments/CalibrateFragment$9;-><init>(Lcom/senseonics/fragments/CalibrateFragment;)V

    sget-wide v2, Lcom/senseonics/graph/util/GraphUtils;->MINUTE:J

    const-wide/16 v4, 0x6

    div-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 903
    invoke-direct {p0}, Lcom/senseonics/fragments/CalibrateFragment;->postCalibrationRequests()V

    :cond_0
    return-void
.end method

.method private getPosition(I)I
    .locals 4

    .line 745
    sget-object v0, Lcom/senseonics/util/Utils;->currentGlucoseUnit:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    sget-object v1, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MG_DL:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    if-ne v0, v1, :cond_0

    .line 746
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucoseValuesMg:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/senseonics/util/Utils;->getItemPosition(Ljava/util/ArrayList;I)I

    move-result p1

    goto :goto_0

    .line 748
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "glucose level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-float p1, p1

    invoke-static {p1}, Lcom/senseonics/util/Convert;->MLConvertMgToMmol(F)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GlucosePicker"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucoseValues:Ljava/util/ArrayList;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/senseonics/util/Convert;->MLConvertMgToMmol(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "%.1f"

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/senseonics/util/Utils;->getItemPosition(Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result p1

    :goto_0
    return p1
.end method

.method private hideKeyboard(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "input_method"

    .line 842
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 843
    invoke-virtual {p1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 845
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method private hideProgressDialog()V
    .locals 1

    .line 855
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 856
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private initBottomLayout(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f090354

    .line 756
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090088

    .line 758
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/senseonics/fragments/CalibrateFragment;->arrowTips:Landroid/widget/ImageView;

    const v1, 0x7f090356

    .line 759
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x7f090355

    .line 760
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v2, 0x7f1102e4

    .line 761
    invoke-virtual {p0, v2}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 763
    new-instance p1, Lcom/senseonics/fragments/CalibrateFragment$8;

    invoke-direct {p1, p0, v1}, Lcom/senseonics/fragments/CalibrateFragment$8;-><init>(Lcom/senseonics/fragments/CalibrateFragment;Landroid/widget/LinearLayout;)V

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initGlucosePicker(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f090167

    .line 693
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucosePicker:Landroid/widget/RelativeLayout;

    const v0, 0x7f090166

    .line 694
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucoseTextView:Landroid/widget/TextView;

    .line 696
    iget-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->getGlucoseLevel()I

    move-result p1

    .line 697
    sget v0, Lcom/senseonics/util/Utils;->minBloodGlucose:I

    if-lt p1, v0, :cond_0

    sget v0, Lcom/senseonics/util/Utils;->maxBloodGlucose:I

    if-gt p1, v0, :cond_0

    .line 698
    iput p1, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucoseLevel:I

    goto :goto_0

    .line 700
    :cond_0
    sget p1, Lcom/senseonics/util/Utils;->GLUCOSE_DEFAULT_LEVEL:I

    iput p1, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucoseLevel:I

    .line 703
    :goto_0
    iget-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    sget v0, Lcom/senseonics/util/Utils;->minBloodGlucose:I

    sget v1, Lcom/senseonics/util/Utils;->maxBloodGlucose:I

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/senseonics/bluetoothle/DialogUtils;->getNumbersBetween(III)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucoseValuesMg:Ljava/util/ArrayList;

    .line 704
    sget-object p1, Lcom/senseonics/util/Utils;->currentGlucoseUnit:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    sget-object v0, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MG_DL:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    if-ne p1, v0, :cond_1

    .line 705
    iget-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    sget v0, Lcom/senseonics/util/Utils;->minBloodGlucose:I

    sget v1, Lcom/senseonics/util/Utils;->maxBloodGlucose:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/senseonics/bluetoothle/DialogUtils;->getGlucoseLevels(III)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucoseValues:Ljava/util/ArrayList;

    goto :goto_1

    .line 710
    :cond_1
    iget-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    sget v0, Lcom/senseonics/util/Utils;->minBloodGlucose:I

    int-to-float v0, v0

    .line 711
    invoke-static {v0}, Lcom/senseonics/util/Convert;->MLConvertMgToMmol(F)F

    move-result v0

    sget v1, Lcom/senseonics/util/Utils;->maxBloodGlucose:I

    int-to-float v1, v1

    .line 712
    invoke-static {v1}, Lcom/senseonics/util/Convert;->MLConvertMgToMmol(F)F

    move-result v1

    const v2, 0x3dcccccd    # 0.1f

    .line 710
    invoke-virtual {p1, v0, v1, v2}, Lcom/senseonics/bluetoothle/DialogUtils;->getGlucoseLevels(FFF)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucoseValues:Ljava/util/ArrayList;

    .line 715
    :goto_1
    new-instance p1, Lcom/senseonics/fragments/CalibrateFragment$6;

    invoke-direct {p1, p0}, Lcom/senseonics/fragments/CalibrateFragment$6;-><init>(Lcom/senseonics/fragments/CalibrateFragment;)V

    const/4 v0, 0x0

    .line 726
    invoke-direct {p0, v0}, Lcom/senseonics/fragments/CalibrateFragment;->updateGlucoseTextWithString(Ljava/lang/String;)V

    .line 728
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucosePicker:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/senseonics/fragments/CalibrateFragment$7;

    invoke-direct {v1, p0, p1}, Lcom/senseonics/fragments/CalibrateFragment$7;-><init>(Lcom/senseonics/fragments/CalibrateFragment;Lcom/senseonics/events/EventUtils$PickerManager;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initTimePicker(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f090350

    .line 639
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->timePicker:Landroid/widget/RelativeLayout;

    const v0, 0x7f09034f

    .line 640
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment;->timeTextView:Landroid/widget/TextView;

    .line 642
    new-instance p1, Lcom/senseonics/fragments/CalibrateFragment$4;

    invoke-direct {p1, p0}, Lcom/senseonics/fragments/CalibrateFragment$4;-><init>(Lcom/senseonics/fragments/CalibrateFragment;)V

    .line 650
    invoke-direct {p0}, Lcom/senseonics/fragments/CalibrateFragment;->updateTimeTextView()V

    .line 652
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->timePicker:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/senseonics/fragments/CalibrateFragment$5;

    invoke-direct {v1, p0, p1}, Lcom/senseonics/fragments/CalibrateFragment$5;-><init>(Lcom/senseonics/fragments/CalibrateFragment;Lcom/senseonics/util/dialogs/DateDialogManager;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private postCalibrationRequests()V
    .locals 1

    .line 879
    invoke-direct {p0}, Lcom/senseonics/fragments/CalibrateFragment;->resetModelValues()V

    .line 881
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/senseonics/gen12androidapp/ServiceActivity;

    invoke-interface {v0}, Lcom/senseonics/gen12androidapp/ServiceActivity;->getService()Lcom/senseonics/bluetoothle/BluetoothService;

    move-result-object v0

    .line 882
    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postNextCalibrationDate()V

    .line 883
    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postNextCalibrationTime()V

    .line 884
    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postMinutesRemainingUntilCalibrationAllowed()V

    .line 885
    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postMinutesBeforeNextCalibrationTime()V

    .line 886
    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postMinutesAfterNextCalibrationTime()V

    .line 887
    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postCurrentCalibrationPhaseRequest()V

    .line 888
    invoke-virtual {v0}, Lcom/senseonics/bluetoothle/BluetoothService;->postReadyForCalibration()V

    return-void
.end method

.method private printCalendar(Ljava/lang/String;Ljava/util/Calendar;)V
    .locals 4

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calendar:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    .line 339
    invoke-virtual {p2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    .line 340
    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xb

    .line 341
    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xc

    .line 342
    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xd

    .line 343
    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 338
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private resetModelValues()V
    .locals 2

    .line 871
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/senseonics/model/TransmitterStateModel;->setNextScheduledCalibration(Ljava/util/Calendar;)V

    .line 872
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/senseonics/model/TransmitterStateModel;->setMinutesBeforeNextCalibrationTime(I)V

    .line 873
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0, v1}, Lcom/senseonics/model/TransmitterStateModel;->setMinutesAfterNextCalibrationTime(I)V

    .line 874
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0, v1}, Lcom/senseonics/model/TransmitterStateModel;->setMinutesRemainingUntilCalibrationAllowed(I)V

    .line 875
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    sget-object v1, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->REASON_UNKNOWN:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    invoke-virtual {v1}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/senseonics/model/TransmitterStateModel;->setReadyForCalibrationState(I)V

    return-void
.end method

.method private resetViewAndRefreshTimer()V
    .locals 6

    .line 820
    invoke-direct {p0}, Lcom/senseonics/fragments/CalibrateFragment;->cancelRefreshTimer()V

    .line 822
    invoke-direct {p0}, Lcom/senseonics/fragments/CalibrateFragment;->resetModelValues()V

    .line 823
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->refreshView()V

    .line 825
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->timer:Ljava/util/Timer;

    .line 826
    new-instance v1, Lcom/senseonics/fragments/CalibrateFragment$UpdateTimeTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/senseonics/fragments/CalibrateFragment$UpdateTimeTask;-><init>(Lcom/senseonics/fragments/CalibrateFragment;Lcom/senseonics/fragments/CalibrateFragment$1;)V

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0x1d4c0

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private setTextViewToBlackText(Landroid/widget/TextView;)V
    .locals 2

    .line 249
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f060021

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private setTextViewToGrayText(Landroid/widget/TextView;)V
    .locals 2

    .line 245
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f060089

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private setTouchListenerToHideKeyboardForNonEditText(Landroid/app/Activity;Landroid/view/View;Landroid/widget/EditText;)V
    .locals 3

    .line 202
    instance-of v0, p2, Landroid/widget/EditText;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->notesLayout:Landroid/widget/RelativeLayout;

    if-eq p2, v0, :cond_0

    .line 203
    new-instance v0, Lcom/senseonics/fragments/CalibrateFragment$2;

    invoke-direct {v0, p0, p3, p1}, Lcom/senseonics/fragments/CalibrateFragment$2;-><init>(Lcom/senseonics/fragments/CalibrateFragment;Landroid/widget/EditText;Landroid/app/Activity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 212
    :cond_0
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->notesLayout:Landroid/widget/RelativeLayout;

    if-eq p2, v0, :cond_1

    const/4 v0, 0x0

    .line 213
    :goto_0
    move-object v1, p2

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 214
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 215
    invoke-direct {p0, p1, v1, p3}, Lcom/senseonics/fragments/CalibrateFragment;->setTouchListenerToHideKeyboardForNonEditText(Landroid/app/Activity;Landroid/view/View;Landroid/widget/EditText;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setupSubmitEvent()V
    .locals 3

    .line 223
    new-instance v0, Lcom/senseonics/fragments/CalibrateFragment$3;

    invoke-direct {v0, p0}, Lcom/senseonics/fragments/CalibrateFragment$3;-><init>(Lcom/senseonics/fragments/CalibrateFragment;)V

    .line 237
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/senseonics/gen12androidapp/MainActivity;

    if-ne v1, v2, :cond_0

    .line 238
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/senseonics/gen12androidapp/MainActivity;

    iget-object v1, v1, Lcom/senseonics/gen12androidapp/MainActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 239
    :cond_0
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/senseonics/gen12androidapp/CalibrateActivity;

    if-ne v1, v2, :cond_1

    .line 240
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/senseonics/gen12androidapp/CalibrateActivity;

    iget-object v1, v1, Lcom/senseonics/gen12androidapp/CalibrateActivity;->naviBarRightItemTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private startBlinkTextView(Landroid/widget/TextView;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 597
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x12c

    .line 599
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    const-wide/16 v1, 0x14

    .line 601
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    const/4 v1, 0x2

    .line 602
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    const/4 v1, -0x1

    .line 603
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 605
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 607
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/fragments/CalibrateFragment;->startingText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 608
    invoke-direct {p0, p1}, Lcom/senseonics/fragments/CalibrateFragment;->stopBlinkTextView(Landroid/widget/TextView;)V

    :cond_0
    return-void
.end method

.method private stopBlinkTextView(Landroid/widget/TextView;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 615
    invoke-virtual {p1}, Landroid/widget/TextView;->clearAnimation()V

    :cond_0
    return-void
.end method

.method private suggestedUserAction()Ljava/lang/String;
    .locals 4

    .line 448
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getMinutesRemainingUntilCalibrationAllowed()I

    move-result v0

    if-lez v0, :cond_0

    const v1, 0xffff

    if-eq v0, v1, :cond_0

    .line 449
    iget-object v1, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 451
    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentMessageCode()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v1

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->SensorAwolAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x5

    .line 459
    :cond_1
    iget-object v1, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentMessageCode()Lcom/senseonics/util/TransmitterMessageCode;

    move-result-object v1

    sget-object v2, Lcom/senseonics/util/TransmitterMessageCode;->SensorAwolAlarm:Lcom/senseonics/util/TransmitterMessageCode;

    const-string v3, "%d"

    if-ne v1, v2, :cond_2

    const v1, 0x7f110216

    .line 460
    invoke-virtual {p0, v1}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 461
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 460
    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const v1, 0x7f110323

    .line 463
    invoke-virtual {p0, v1}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 464
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 463
    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private updateCurrentPhase()V
    .locals 2

    .line 439
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->phaseTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentPhase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateGlucoseTextWithString(Ljava/lang/String;)V
    .locals 1

    .line 680
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucoseValueSelected:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 681
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucoseTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 684
    iget-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucoseTextView:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/senseonics/fragments/CalibrateFragment;->stopBlinkTextView(Landroid/widget/TextView;)V

    goto :goto_0

    .line 686
    :cond_0
    iget-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucoseTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->startingText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 689
    :goto_0
    invoke-direct {p0}, Lcom/senseonics/fragments/CalibrateFragment;->checkIfSubmitButtonNeedEnable()V

    return-void
.end method

.method private updateTimeTextView()V
    .locals 3

    .line 620
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->timeValueSelected:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->timeTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/senseonics/fragments/CalibrateFragment;->currentDate:Ljava/util/Calendar;

    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/senseonics/util/TimeProvider;->getTime24HrFormat(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 624
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->timeTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/senseonics/fragments/CalibrateFragment;->stopBlinkTextView(Landroid/widget/TextView;)V

    goto :goto_0

    .line 626
    :cond_0
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->timeTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/senseonics/fragments/CalibrateFragment;->startingText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 629
    :goto_0
    invoke-direct {p0}, Lcom/senseonics/fragments/CalibrateFragment;->checkIfSubmitButtonNeedEnable()V

    return-void
.end method

.method private updateTimeWithCalendar(Ljava/util/Calendar;)V
    .locals 0

    .line 633
    iput-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment;->currentDate:Ljava/util/Calendar;

    const/4 p1, 0x1

    .line 634
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment;->timeValueSelected:Ljava/lang/Boolean;

    .line 635
    invoke-direct {p0}, Lcom/senseonics/fragments/CalibrateFragment;->updateTimeTextView()V

    return-void
.end method


# virtual methods
.method public getTimer()Ljava/util/Timer;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->timer:Ljava/util/Timer;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 133
    invoke-super {p0, p1, p2, p3}, Lcom/senseonics/fragments/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 135
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->getCalibrateLayout()I

    move-result p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 137
    new-instance p2, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    const v0, 0x7f120229

    invoke-direct {p2, p3, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/senseonics/fragments/CalibrateFragment;->progressDialog:Landroid/app/ProgressDialog;

    .line 138
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    const v0, 0x7f0800a2

    invoke-static {p3, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/app/ProgressDialog;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 139
    iget-object p2, p0, Lcom/senseonics/fragments/CalibrateFragment;->progressDialog:Landroid/app/ProgressDialog;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 141
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    iput-object p2, p0, Lcom/senseonics/fragments/CalibrateFragment;->currentDate:Ljava/util/Calendar;

    .line 142
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    iput-object p2, p0, Lcom/senseonics/fragments/CalibrateFragment;->startDate:Ljava/util/Calendar;

    const/4 p2, 0x0

    .line 144
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucoseValueSelected:Ljava/lang/Boolean;

    .line 145
    iput-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->timeValueSelected:Ljava/lang/Boolean;

    .line 147
    invoke-direct {p0, p1}, Lcom/senseonics/fragments/CalibrateFragment;->initTimePicker(Landroid/view/View;)V

    .line 148
    invoke-direct {p0, p1}, Lcom/senseonics/fragments/CalibrateFragment;->initGlucosePicker(Landroid/view/View;)V

    .line 149
    invoke-direct {p0, p1}, Lcom/senseonics/fragments/CalibrateFragment;->initBottomLayout(Landroid/view/View;)V

    const v0, 0x7f090248

    .line 150
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->nextScheduleLabel:Landroid/widget/TextView;

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<b>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f1101e1

    invoke-virtual {p0, v2}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</b>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090247

    .line 152
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->nextScheduleTextView:Landroid/widget/TextView;

    const v0, 0x7f0902cc

    .line 153
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->sensorDaysSinceInsertionTextView:Landroid/widget/TextView;

    const v0, 0x7f090353

    .line 154
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->time_label:Landroid/widget/TextView;

    const v0, 0x7f09016c

    .line 155
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucose_label:Landroid/widget/TextView;

    const v0, 0x7f09034f

    .line 156
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->time_selection_label:Landroid/widget/TextView;

    const v0, 0x7f090166

    .line 157
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->glucose_selection_label:Landroid/widget/TextView;

    const v0, 0x7f090374

    .line 158
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    const v0, 0x7f090251

    .line 160
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->notesLabel:Landroid/widget/TextView;

    const v0, 0x7f090252

    .line 161
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->notesLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f090250

    .line 173
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->notesEditText:Landroid/widget/EditText;

    const/4 v1, 0x6

    .line 174
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 175
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->notesEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p3}, Landroid/widget/EditText;->setRawInputType(I)V

    const p3, 0x7f090278

    .line 179
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/senseonics/fragments/CalibrateFragment;->phaseLayout:Landroid/widget/LinearLayout;

    .line 180
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->calibratePageAddPhase()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const p3, 0x7f09027b

    .line 181
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/senseonics/fragments/CalibrateFragment;->phaseTextView:Landroid/widget/TextView;

    .line 184
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    const v0, 0x7f090162

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/fragments/CalibrateFragment;->notesEditText:Landroid/widget/EditText;

    invoke-direct {p0, p3, v0, v1}, Lcom/senseonics/fragments/CalibrateFragment;->setTouchListenerToHideKeyboardForNonEditText(Landroid/app/Activity;Landroid/view/View;Landroid/widget/EditText;)V

    .line 185
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    const-class v0, Lcom/senseonics/gen12androidapp/MainActivity;

    if-ne p3, v0, :cond_1

    .line 186
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090126

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/fragments/CalibrateFragment;->notesEditText:Landroid/widget/EditText;

    invoke-direct {p0, p3, v0, v1}, Lcom/senseonics/fragments/CalibrateFragment;->setTouchListenerToHideKeyboardForNonEditText(Landroid/app/Activity;Landroid/view/View;Landroid/widget/EditText;)V

    goto :goto_1

    .line 187
    :cond_1
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    const-class v0, Lcom/senseonics/gen12androidapp/CalibrateActivity;

    if-ne p3, v0, :cond_2

    .line 188
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090096

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/fragments/CalibrateFragment;->notesEditText:Landroid/widget/EditText;

    invoke-direct {p0, p3, v0, v1}, Lcom/senseonics/fragments/CalibrateFragment;->setTouchListenerToHideKeyboardForNonEditText(Landroid/app/Activity;Landroid/view/View;Landroid/widget/EditText;)V

    .line 191
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/senseonics/fragments/CalibrateFragment;->setupSubmitEvent()V

    .line 193
    iput-boolean p2, p0, Lcom/senseonics/fragments/CalibrateFragment;->tipsIsShowing:Z

    .line 195
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->refreshView()V

    return-object p1
.end method

.method public onEventMainThread(Lcom/senseonics/bluetoothle/TransmitterConnectionEvent;)V
    .locals 0

    .line 810
    iget-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {p1}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 811
    invoke-direct {p0}, Lcom/senseonics/fragments/CalibrateFragment;->resetViewAndRefreshTimer()V

    goto :goto_0

    .line 813
    :cond_0
    invoke-direct {p0}, Lcom/senseonics/fragments/CalibrateFragment;->cancelRefreshTimer()V

    .line 814
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->refreshView()V

    :goto_0
    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/events/CalibrationRequestEvent;)V
    .locals 0

    .line 806
    invoke-direct {p0}, Lcom/senseonics/fragments/CalibrateFragment;->resetViewAndRefreshTimer()V

    return-void
.end method

.method public onEventMainThread(Lcom/senseonics/model/ReadyForCalibrationChangedEvent;)V
    .locals 0

    .line 802
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->refreshView()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 794
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->notesEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/senseonics/fragments/CalibrateFragment;->clearEditTextFocusAndHideKeyboard(Landroid/widget/EditText;Landroid/app/Activity;)V

    .line 795
    invoke-direct {p0}, Lcom/senseonics/fragments/CalibrateFragment;->hideProgressDialog()V

    .line 796
    invoke-direct {p0}, Lcom/senseonics/fragments/CalibrateFragment;->cancelRefreshTimer()V

    .line 797
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 798
    invoke-super {p0}, Lcom/senseonics/fragments/BaseFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 782
    invoke-super {p0}, Lcom/senseonics/fragments/BaseFragment;->onResume()V

    .line 784
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->registerSticky(Ljava/lang/Object;)V

    .line 787
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/senseonics/gen12androidapp/MainActivity;

    if-eqz v0, :cond_0

    .line 788
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/senseonics/gen12androidapp/MainActivity;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MainActivity;->refreshAfterFragmentChanged()V

    :cond_0
    return-void
.end method

.method public refreshCalibrationState()V
    .locals 4

    .line 471
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 473
    invoke-direct {p0}, Lcom/senseonics/fragments/CalibrateFragment;->disablePickersAndBottomLayout()V

    .line 475
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->isTransmitterConnected()Z

    move-result v0

    const v1, 0x7f060071

    if-nez v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    const v2, 0x7f1100d7

    invoke-virtual {p0, v2}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 477
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    .line 481
    :cond_0
    sget-object v0, Lcom/senseonics/fragments/CalibrateFragment$10;->$SwitchMap$com$senseonics$model$CalibrationHelper$CALIBRATION_READINESS:[I

    iget-object v2, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->getReadyForCalibrationState()Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    move-result-object v2

    invoke-virtual {v2}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const v2, 0x7f110312

    packed-switch v0, :pswitch_data_0

    .line 575
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 576
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    .line 561
    :pswitch_0
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentCalibrationPhase()Lcom/senseonics/util/Utils$CAL_PHASE;

    move-result-object v0

    sget-object v3, Lcom/senseonics/util/Utils$CAL_PHASE;->WARM_UP:Lcom/senseonics/util/Utils$CAL_PHASE;

    if-ne v0, v3, :cond_2

    .line 562
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->updateToHcp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 563
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    const v2, 0x7f110327

    invoke-virtual {p0, v2}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 565
    :cond_1
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    const v2, 0x7f110326

    invoke-virtual {p0, v2}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 568
    :cond_2
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 571
    :goto_0
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    .line 555
    :pswitch_1
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    const v2, 0x7f1102f0

    invoke-virtual {p0, v2}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 556
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    .line 546
    :pswitch_2
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->updateToHcp()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 547
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    const v2, 0x7f11025e

    invoke-virtual {p0, v2}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 549
    :cond_3
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    const v2, 0x7f11025d

    invoke-virtual {p0, v2}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 551
    :goto_1
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    .line 535
    :pswitch_3
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getCalibrationDurationMinutes()I

    move-result v0

    const v2, 0x7f110324

    .line 537
    invoke-virtual {p0, v2}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 538
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "%d"

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 540
    iget-object v2, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 541
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    .line 525
    :pswitch_4
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->updateToHcp()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 526
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    const v2, 0x7f110314

    invoke-virtual {p0, v2}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 528
    :cond_4
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    const v2, 0x7f110313

    invoke-virtual {p0, v2}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 530
    :goto_2
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    .line 520
    :pswitch_5
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    const v2, 0x7f1101ed

    invoke-virtual {p0, v2}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 521
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    .line 511
    :pswitch_6
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->updateCalibrationReadyTooSoonText()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 512
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    const v2, 0x7f1102ea

    invoke-virtual {p0, v2}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 514
    :cond_5
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    const v2, 0x7f1102e9

    invoke-virtual {p0, v2}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 516
    :goto_3
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_4

    .line 506
    :pswitch_7
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    const v2, 0x7f1100ec

    invoke-virtual {p0, v2}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 507
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    .line 501
    :pswitch_8
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    const v2, 0x7f110247

    invoke-virtual {p0, v2}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 502
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    :pswitch_9
    const v0, 0x7f1101f4

    .line 494
    invoke-virtual {p0, v0}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 495
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/senseonics/fragments/CalibrateFragment;->suggestedUserAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 496
    iget-object v2, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 497
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    .line 483
    :pswitch_a
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    const v1, 0x7f11006a

    invoke-virtual {p0, v1}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 484
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->tvReadyForCalibration:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f06005f

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 487
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/senseonics/fragments/CalibrateFragment;->updateTimeWithCalendar(Ljava/util/Calendar;)V

    .line 490
    invoke-direct {p0}, Lcom/senseonics/fragments/CalibrateFragment;->enablePickersAndBottomLayout()V

    :cond_6
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public refreshView()V
    .locals 0

    .line 862
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->refreshCalibrationState()V

    .line 863
    invoke-direct {p0}, Lcom/senseonics/fragments/CalibrateFragment;->updateCurrentPhase()V

    .line 864
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->updateNextScheduledCalibration()V

    .line 865
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->updateSensorDaysSinceInsertion()V

    .line 867
    invoke-direct {p0}, Lcom/senseonics/fragments/CalibrateFragment;->hideProgressDialog()V

    return-void
.end method

.method public setManager(Lcom/senseonics/fragments/CalibrateFragment$CalibrationManager;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment;->manager:Lcom/senseonics/fragments/CalibrateFragment$CalibrationManager;

    return-void
.end method

.method public setTimeValueSelected(Ljava/lang/Boolean;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/senseonics/fragments/CalibrateFragment;->timeValueSelected:Ljava/lang/Boolean;

    return-void
.end method

.method public setTipsIsShowing(Z)V
    .locals 0

    .line 86
    iput-boolean p1, p0, Lcom/senseonics/fragments/CalibrateFragment;->tipsIsShowing:Z

    return-void
.end method

.method public showCalAcceptRejectPopups(Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;I)V
    .locals 4

    .line 945
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->calibrationHelper:Lcom/senseonics/model/CalibrationHelper;

    invoke-virtual {p1}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/senseonics/model/CalibrationHelper;->getTitleForCalibrationUseFlag(I)Ljava/lang/String;

    move-result-object v0

    .line 946
    iget-object v1, p0, Lcom/senseonics/fragments/CalibrateFragment;->calibrationHelper:Lcom/senseonics/model/CalibrationHelper;

    invoke-virtual {p1}, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_USE_FLAG;->getId()I

    move-result p1

    iget-object v2, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v1, p1, p2, v2}, Lcom/senseonics/model/CalibrationHelper;->getTextForCalibrationUseFlag(IILcom/senseonics/model/TransmitterStateModel;)Ljava/lang/String;

    move-result-object p1

    .line 947
    iget-object p2, p0, Lcom/senseonics/fragments/CalibrateFragment;->dialogUtils:Lcom/senseonics/bluetoothle/DialogUtils;

    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/senseonics/util/dialogs/WarningDialogInfo;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v0, p1}, Lcom/senseonics/util/dialogs/WarningDialogInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v1, v2}, Lcom/senseonics/bluetoothle/DialogUtils;->createWarningDialog(Landroid/content/Context;Lcom/senseonics/util/dialogs/WarningDialogInfo;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public updateNextScheduledCalibration()V
    .locals 12

    .line 371
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->calibratePageCalInProgress()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getCurrentCountdown()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->nextScheduleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 373
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->nextScheduleTextView:Landroid/widget/TextView;

    const v1, 0x7f110211

    invoke-virtual {p0, v1}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->nextScheduleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const-string v0, "next_calibrate"

    .line 378
    iget-object v2, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->getNextScheduledCalibration()Ljava/util/Calendar;

    move-result-object v2

    const v3, 0x7f1101e2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 379
    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->getMinutesBeforeNextCalibrationTime()I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_5

    iget-object v2, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    .line 380
    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->getMinutesAfterNextCalibrationTime()I

    move-result v2

    if-eq v2, v4, :cond_5

    .line 382
    iget-object v2, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v2}, Lcom/senseonics/model/TransmitterStateModel;->getNextScheduledCalibration()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lcom/senseonics/util/Utils;->copyCalendar(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v2

    .line 383
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 385
    invoke-static {v2}, Lcom/senseonics/util/Utils;->copyCalendar(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v4

    .line 386
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    iget-object v7, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v7}, Lcom/senseonics/model/TransmitterStateModel;->getMinutesBeforeNextCalibrationTime()I

    move-result v7

    int-to-long v7, v7

    sget-wide v9, Lcom/senseonics/graph/util/GraphUtils;->MINUTE:J

    mul-long/2addr v7, v9

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 387
    invoke-static {v2}, Lcom/senseonics/util/Utils;->copyCalendar(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v5

    .line 388
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    iget-object v8, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v8}, Lcom/senseonics/model/TransmitterStateModel;->getMinutesAfterNextCalibrationTime()I

    move-result v8

    int-to-long v8, v8

    sget-wide v10, Lcom/senseonics/graph/util/GraphUtils;->MINUTE:J

    mul-long/2addr v8, v10

    add-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 390
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "minsBeforeNextCalibrationTime:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v7}, Lcom/senseonics/model/TransmitterStateModel;->getMinutesBeforeNextCalibrationTime()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "minsAfterNextCalibrationTime:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v7}, Lcom/senseonics/model/TransmitterStateModel;->getMinutesAfterNextCalibrationTime()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "minRange:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/senseonics/util/TimeProvider;->debugDate(Ljava/util/Calendar;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "maxRange:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/senseonics/util/TimeProvider;->debugDate(Ljava/util/Calendar;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Utils.nextScheduledCalibration2:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v7}, Lcom/senseonics/model/TransmitterStateModel;->getNextScheduledCalibration()Ljava/util/Calendar;

    move-result-object v7

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/senseonics/util/TimeProvider;->debugDate(Ljava/util/Calendar;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 397
    invoke-direct {p0, v0, v2}, Lcom/senseonics/fragments/CalibrateFragment;->printCalendar(Ljava/lang/String;Ljava/util/Calendar;)V

    .line 398
    invoke-direct {p0, v0, v4}, Lcom/senseonics/fragments/CalibrateFragment;->printCalendar(Ljava/lang/String;Ljava/util/Calendar;)V

    .line 399
    invoke-direct {p0, v0, v5}, Lcom/senseonics/fragments/CalibrateFragment;->printCalendar(Ljava/lang/String;Ljava/util/Calendar;)V

    .line 400
    invoke-direct {p0, v0, v6}, Lcom/senseonics/fragments/CalibrateFragment;->printCalendar(Ljava/lang/String;Ljava/util/Calendar;)V

    const v7, 0x7f1102e8

    .line 402
    invoke-virtual {p0, v7}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    .line 405
    invoke-virtual {v6, v8}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    if-ne v9, v8, :cond_1

    .line 406
    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v4, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v8, v1, :cond_1

    const/4 v1, 0x5

    .line 407
    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v4, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v8, v1, :cond_1

    const-string v1, "TODAY"

    .line 408
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f1102e7

    .line 409
    invoke-virtual {p0, v0}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 412
    :cond_1
    invoke-virtual {v5, v6}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 415
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getMinutesBeforeNextCalibrationTime()I

    move-result v0

    const-string v1, " "

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getMinutesAfterNextCalibrationTime()I

    move-result v0

    if-nez v0, :cond_2

    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/senseonics/util/TimeProvider;->getTime24HrFormat(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 418
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f110039

    invoke-virtual {p0, v2}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/senseonics/util/TimeProvider;->getTime24HrFormat(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f110028

    .line 420
    invoke-virtual {p0, v2}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    invoke-virtual {p0}, Lcom/senseonics/fragments/CalibrateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/senseonics/util/TimeProvider;->getTime24HrFormat(Ljava/util/Calendar;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 424
    :goto_0
    iget-object v1, p0, Lcom/senseonics/fragments/CalibrateFragment;->nextScheduleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 426
    :cond_3
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getReadyForCalibrationState()Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    move-result-object v0

    sget-object v1, Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;->TOO_SOON:Lcom/senseonics/model/CalibrationHelper$CALIBRATION_READINESS;

    if-ne v0, v1, :cond_4

    .line 427
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->nextScheduleTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 429
    :cond_4
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->nextScheduleTextView:Landroid/widget/TextView;

    const v1, 0x7f1101fb

    invoke-virtual {p0, v1}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 433
    :cond_5
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->nextScheduleTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public updateSensorDaysSinceInsertion()V
    .locals 5

    .line 348
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->transmitterStateModel:Lcom/senseonics/model/TransmitterStateModel;

    invoke-virtual {v0}, Lcom/senseonics/model/TransmitterStateModel;->getSensorInsertionDateAndTime()Ljava/util/Calendar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 352
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 353
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 354
    iget-object v4, p0, Lcom/senseonics/fragments/CalibrateFragment;->alertHelper:Lcom/senseonics/util/AlertHelper;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/senseonics/util/AlertHelper;->calculateDaysSinceInsertion(JJ)I

    move-result v0

    .line 356
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb4

    if-le v0, v2, :cond_1

    const-string v1, ">180"

    goto :goto_0

    :cond_0
    const v0, 0x7f1101f2

    .line 364
    invoke-virtual {p0, v0}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 367
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/senseonics/fragments/CalibrateFragment;->sensorDaysSinceInsertionTextView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<b>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f11025b

    invoke-virtual {p0, v3}, Lcom/senseonics/fragments/CalibrateFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</b>"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
