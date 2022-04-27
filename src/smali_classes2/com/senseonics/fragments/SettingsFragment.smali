.class public Lcom/senseonics/fragments/SettingsFragment;
.super Lcom/senseonics/fragments/BaseFragment;
.source "SettingsFragment.java"


# instance fields
.field private content:Landroid/widget/LinearLayout;

.field private inflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/senseonics/fragments/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/senseonics/fragments/SettingsFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/senseonics/fragments/SettingsFragment;->createDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private addView(Ljava/lang/String;ILandroid/view/View$OnClickListener;Z)V
    .locals 4

    .line 159
    iget-object v0, p0, Lcom/senseonics/fragments/SettingsFragment;->inflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    const v2, 0x7f0c00f6

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0901b7

    .line 160
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    const v3, 0x7f0901af

    .line 161
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 162
    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz p4, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 p2, 0x3e800000    # 0.25f

    .line 163
    :goto_0
    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    if-eqz p4, :cond_1

    goto :goto_1

    :cond_1
    move-object p3, v1

    .line 164
    :goto_1
    invoke-virtual {v2, p3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f09023a

    .line 165
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 166
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 168
    invoke-virtual {p0}, Lcom/senseonics/fragments/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p4, :cond_2

    const p3, 0x7f060021

    goto :goto_2

    :cond_2
    const p3, 0x7f060089

    :goto_2
    invoke-static {p1, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 169
    iget-object p1, p0, Lcom/senseonics/fragments/SettingsFragment;->content:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private createDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 173
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/senseonics/fragments/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f120105

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 175
    invoke-virtual {p0}, Lcom/senseonics/fragments/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c005e

    const/4 v3, 0x0

    .line 176
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090338

    .line 178
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 179
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f090357

    .line 181
    invoke-virtual {v1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const/4 v2, 0x0

    .line 182
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0900bb

    .line 185
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const p2, 0x7f1101e4

    .line 186
    invoke-virtual {p0, p2}, Lcom/senseonics/fragments/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    new-instance p2, Lcom/senseonics/fragments/SettingsFragment$9;

    invoke-direct {p2, p0, v0}, Lcom/senseonics/fragments/SettingsFragment$9;-><init>(Lcom/senseonics/fragments/SettingsFragment;Landroid/app/Dialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090264

    .line 195
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const p2, 0x7f11032f

    .line 196
    invoke-virtual {p0, p2}, Lcom/senseonics/fragments/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    new-instance p2, Lcom/senseonics/fragments/SettingsFragment$10;

    invoke-direct {p2, p0, v0}, Lcom/senseonics/fragments/SettingsFragment$10;-><init>(Lcom/senseonics/fragments/SettingsFragment;Landroid/app/Dialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 214
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private hideCalReminders()Z
    .locals 1

    .line 222
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->calibrationReminders()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private hideDailyCalibration()Z
    .locals 1

    .line 218
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->hideDailyCal()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->supportRollingCal()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 35
    invoke-super {p0, p1, p2, p3}, Lcom/senseonics/fragments/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const p2, 0x7f0c008f

    const/4 p3, 0x0

    .line 37
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0900da

    .line 38
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/senseonics/fragments/SettingsFragment;->content:Landroid/widget/LinearLayout;

    .line 39
    iput-object p1, p0, Lcom/senseonics/fragments/SettingsFragment;->inflater:Landroid/view/LayoutInflater;

    const p1, 0x7f11012c

    .line 41
    invoke-virtual {p0, p1}, Lcom/senseonics/fragments/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Lcom/senseonics/fragments/SettingsFragment$1;

    invoke-direct {p3, p0}, Lcom/senseonics/fragments/SettingsFragment$1;-><init>(Lcom/senseonics/fragments/SettingsFragment;)V

    const/4 v0, 0x1

    const v1, 0x7f080142

    invoke-direct {p0, p1, v1, p3, v0}, Lcom/senseonics/fragments/SettingsFragment;->addView(Ljava/lang/String;ILandroid/view/View$OnClickListener;Z)V

    .line 53
    invoke-direct {p0}, Lcom/senseonics/fragments/SettingsFragment;->hideCalReminders()Z

    move-result p1

    const p3, 0x7f080097

    if-nez p1, :cond_0

    const p1, 0x7f110079

    .line 54
    invoke-virtual {p0, p1}, Lcom/senseonics/fragments/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/senseonics/fragments/SettingsFragment$2;

    invoke-direct {v1, p0}, Lcom/senseonics/fragments/SettingsFragment$2;-><init>(Lcom/senseonics/fragments/SettingsFragment;)V

    invoke-direct {p0, p1, p3, v1, v0}, Lcom/senseonics/fragments/SettingsFragment;->addView(Ljava/lang/String;ILandroid/view/View$OnClickListener;Z)V

    .line 67
    :cond_0
    invoke-direct {p0}, Lcom/senseonics/fragments/SettingsFragment;->hideDailyCalibration()Z

    move-result p1

    if-nez p1, :cond_1

    const p1, 0x7f1100a8

    .line 68
    invoke-virtual {p0, p1}, Lcom/senseonics/fragments/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/senseonics/fragments/SettingsFragment$3;

    invoke-direct {v1, p0}, Lcom/senseonics/fragments/SettingsFragment$3;-><init>(Lcom/senseonics/fragments/SettingsFragment;)V

    invoke-direct {p0, p1, p3, v1, v0}, Lcom/senseonics/fragments/SettingsFragment;->addView(Ljava/lang/String;ILandroid/view/View$OnClickListener;Z)V

    :cond_1
    const p1, 0x7f1102cc

    .line 81
    invoke-virtual {p0, p1}, Lcom/senseonics/fragments/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const p3, 0x7f08017a

    new-instance v1, Lcom/senseonics/fragments/SettingsFragment$4;

    invoke-direct {v1, p0}, Lcom/senseonics/fragments/SettingsFragment$4;-><init>(Lcom/senseonics/fragments/SettingsFragment;)V

    invoke-direct {p0, p1, p3, v1, v0}, Lcom/senseonics/fragments/SettingsFragment;->addView(Ljava/lang/String;ILandroid/view/View$OnClickListener;Z)V

    .line 93
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->removeMealTime()Z

    move-result p1

    if-nez p1, :cond_2

    const p1, 0x7f11019d

    .line 94
    invoke-virtual {p0, p1}, Lcom/senseonics/fragments/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const p3, 0x7f080196

    new-instance v1, Lcom/senseonics/fragments/SettingsFragment$5;

    invoke-direct {v1, p0}, Lcom/senseonics/fragments/SettingsFragment$5;-><init>(Lcom/senseonics/fragments/SettingsFragment;)V

    invoke-direct {p0, p1, p3, v1, v0}, Lcom/senseonics/fragments/SettingsFragment;->addView(Ljava/lang/String;ILandroid/view/View$OnClickListener;Z)V

    :cond_2
    const p1, 0x7f1102bd

    .line 107
    invoke-virtual {p0, p1}, Lcom/senseonics/fragments/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const p3, 0x7f080108

    new-instance v1, Lcom/senseonics/fragments/SettingsFragment$6;

    invoke-direct {v1, p0}, Lcom/senseonics/fragments/SettingsFragment$6;-><init>(Lcom/senseonics/fragments/SettingsFragment;)V

    invoke-direct {p0, p1, p3, v1, v0}, Lcom/senseonics/fragments/SettingsFragment;->addView(Ljava/lang/String;ILandroid/view/View$OnClickListener;Z)V

    const p1, 0x7f1102d5

    .line 120
    invoke-virtual {p0, p1}, Lcom/senseonics/fragments/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const p3, 0x7f080109

    new-instance v1, Lcom/senseonics/fragments/SettingsFragment$7;

    invoke-direct {v1, p0}, Lcom/senseonics/fragments/SettingsFragment$7;-><init>(Lcom/senseonics/fragments/SettingsFragment;)V

    invoke-direct {p0, p1, p3, v1, v0}, Lcom/senseonics/fragments/SettingsFragment;->addView(Ljava/lang/String;ILandroid/view/View$OnClickListener;Z)V

    .line 132
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->addMyAccountPage()Z

    move-result p1

    if-nez p1, :cond_3

    const p1, 0x7f110183

    .line 133
    invoke-virtual {p0, p1}, Lcom/senseonics/fragments/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const p3, 0x7f080107

    new-instance v1, Lcom/senseonics/fragments/SettingsFragment$8;

    invoke-direct {v1, p0}, Lcom/senseonics/fragments/SettingsFragment$8;-><init>(Lcom/senseonics/fragments/SettingsFragment;)V

    iget-object v2, p0, Lcom/senseonics/fragments/SettingsFragment;->germanyManager:Lcom/senseonics/account/GermanyManager;

    .line 142
    invoke-virtual {v2}, Lcom/senseonics/account/GermanyManager;->isOfflineModeEnabled()Z

    move-result v2

    xor-int/2addr v0, v2

    .line 133
    invoke-direct {p0, p1, p3, v1, v0}, Lcom/senseonics/fragments/SettingsFragment;->addView(Ljava/lang/String;ILandroid/view/View$OnClickListener;Z)V

    :cond_3
    return-object p2
.end method

.method public onResume()V
    .locals 1

    .line 150
    invoke-super {p0}, Lcom/senseonics/fragments/BaseFragment;->onResume()V

    .line 153
    invoke-virtual {p0}, Lcom/senseonics/fragments/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/senseonics/gen12androidapp/MainActivity;

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/senseonics/fragments/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/senseonics/gen12androidapp/MainActivity;

    invoke-virtual {v0}, Lcom/senseonics/gen12androidapp/MainActivity;->refreshAfterFragmentChanged()V

    :cond_0
    return-void
.end method
