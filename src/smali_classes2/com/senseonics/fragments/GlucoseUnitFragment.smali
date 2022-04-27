.class public Lcom/senseonics/fragments/GlucoseUnitFragment;
.super Landroid/app/Fragment;
.source "GlucoseUnitFragment.java"


# instance fields
.field public radioMgDLType:Landroid/widget/CheckBox;

.field public radioMmolType:Landroid/widget/CheckBox;

.field private unitDespTextView:Landroid/widget/TextView;

.field private unitExampleTextView:Landroid/widget/TextView;

.field private unitMeasurementTextView:Landroid/widget/TextView;

.field private unitReadingTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/senseonics/fragments/GlucoseUnitFragment;Lcom/senseonics/util/Utils$GLUCOSE_UNIT;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/senseonics/fragments/GlucoseUnitFragment;->updateTextForUnit(Lcom/senseonics/util/Utils$GLUCOSE_UNIT;)V

    return-void
.end method

.method private updateTextForUnit(Lcom/senseonics/util/Utils$GLUCOSE_UNIT;)V
    .locals 9

    .line 130
    sget-object v0, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MG_DL:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    const v1, 0x7f110303

    const v2, 0x7f110302

    const v3, 0x7f110309

    const v4, 0x7f110308

    const-string v5, "</b>"

    const-string v6, "<b>"

    const-string v7, "%value%"

    if-ne p1, v0, :cond_1

    .line 131
    invoke-virtual {p0}, Lcom/senseonics/fragments/GlucoseUnitFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {p0}, Lcom/senseonics/fragments/GlucoseUnitFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x7f110307

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v7, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 131
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    .line 134
    invoke-virtual {p0}, Lcom/senseonics/fragments/GlucoseUnitFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {p0}, Lcom/senseonics/fragments/GlucoseUnitFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x7f1101a3

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v7, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    .line 137
    invoke-virtual {p0}, Lcom/senseonics/fragments/GlucoseUnitFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f110304

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    .line 139
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->updateToHcp()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/senseonics/fragments/GlucoseUnitFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {p0}, Lcom/senseonics/fragments/GlucoseUnitFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    goto/16 :goto_0

    .line 143
    :cond_0
    invoke-virtual {p0}, Lcom/senseonics/fragments/GlucoseUnitFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {p0}, Lcom/senseonics/fragments/GlucoseUnitFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 143
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    goto/16 :goto_0

    .line 147
    :cond_1
    invoke-virtual {p0}, Lcom/senseonics/fragments/GlucoseUnitFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {p0}, Lcom/senseonics/fragments/GlucoseUnitFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x7f110306

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v7, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 147
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    .line 150
    invoke-virtual {p0}, Lcom/senseonics/fragments/GlucoseUnitFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {p0}, Lcom/senseonics/fragments/GlucoseUnitFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v8, 0x7f1101aa

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v7, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    .line 153
    invoke-virtual {p0}, Lcom/senseonics/fragments/GlucoseUnitFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f110305

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    .line 155
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->updateToHcp()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 156
    invoke-virtual {p0}, Lcom/senseonics/fragments/GlucoseUnitFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {p0}, Lcom/senseonics/fragments/GlucoseUnitFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 156
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    goto :goto_0

    .line 159
    :cond_2
    invoke-virtual {p0}, Lcom/senseonics/fragments/GlucoseUnitFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {p0}, Lcom/senseonics/fragments/GlucoseUnitFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 159
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    .line 164
    :goto_0
    iget-object v2, p0, Lcom/senseonics/fragments/GlucoseUnitFragment;->unitReadingTextView:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object p1, p0, Lcom/senseonics/fragments/GlucoseUnitFragment;->unitMeasurementTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object p1, p0, Lcom/senseonics/fragments/GlucoseUnitFragment;->unitExampleTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object p1, p0, Lcom/senseonics/fragments/GlucoseUnitFragment;->unitDespTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const p2, 0x7f0c007c

    const/4 p3, 0x0

    .line 32
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090333

    .line 34
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const p3, 0x7f090334

    .line 35
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v0, 0x7f090293

    .line 36
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/senseonics/fragments/GlucoseUnitFragment;->radioMgDLType:Landroid/widget/CheckBox;

    const v0, 0x7f090294

    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/senseonics/fragments/GlucoseUnitFragment;->radioMmolType:Landroid/widget/CheckBox;

    const v0, 0x7f090384

    .line 39
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/senseonics/fragments/GlucoseUnitFragment;->unitReadingTextView:Landroid/widget/TextView;

    const v0, 0x7f090383

    .line 40
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/senseonics/fragments/GlucoseUnitFragment;->unitMeasurementTextView:Landroid/widget/TextView;

    const v0, 0x7f090382

    .line 41
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/senseonics/fragments/GlucoseUnitFragment;->unitExampleTextView:Landroid/widget/TextView;

    const v0, 0x7f090381

    .line 42
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/senseonics/fragments/GlucoseUnitFragment;->unitDespTextView:Landroid/widget/TextView;

    .line 44
    new-instance v0, Lcom/senseonics/fragments/GlucoseUnitFragment$1;

    invoke-direct {v0, p0}, Lcom/senseonics/fragments/GlucoseUnitFragment$1;-><init>(Lcom/senseonics/fragments/GlucoseUnitFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    new-instance p2, Lcom/senseonics/fragments/GlucoseUnitFragment$2;

    invoke-direct {p2, p0}, Lcom/senseonics/fragments/GlucoseUnitFragment$2;-><init>(Lcom/senseonics/fragments/GlucoseUnitFragment;)V

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object p2, p0, Lcom/senseonics/fragments/GlucoseUnitFragment;->radioMgDLType:Landroid/widget/CheckBox;

    new-instance p3, Lcom/senseonics/fragments/GlucoseUnitFragment$3;

    invoke-direct {p3, p0}, Lcom/senseonics/fragments/GlucoseUnitFragment$3;-><init>(Lcom/senseonics/fragments/GlucoseUnitFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 70
    iget-object p2, p0, Lcom/senseonics/fragments/GlucoseUnitFragment;->radioMmolType:Landroid/widget/CheckBox;

    new-instance p3, Lcom/senseonics/fragments/GlucoseUnitFragment$4;

    invoke-direct {p3, p0}, Lcom/senseonics/fragments/GlucoseUnitFragment$4;-><init>(Lcom/senseonics/fragments/GlucoseUnitFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 82
    invoke-virtual {p0}, Lcom/senseonics/fragments/GlucoseUnitFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 84
    sget-object p3, Lcom/senseonics/util/Utils;->SHARED_PREF:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    const-string p3, "currentGlucoseUnit"

    .line 86
    invoke-interface {p2, p3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 98
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p2

    .line 99
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Locale:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "Initial"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p3, "en_US"

    .line 102
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    const-string p3, "de_DE"

    .line 103
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    const-string p3, "it_IT"

    .line 104
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    iget-object p2, p0, Lcom/senseonics/fragments/GlucoseUnitFragment;->radioMmolType:Landroid/widget/CheckBox;

    invoke-virtual {p2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 105
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/senseonics/fragments/GlucoseUnitFragment;->radioMgDLType:Landroid/widget/CheckBox;

    invoke-virtual {p2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 111
    :cond_2
    invoke-static {}, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->values()[Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    move-result-object v0

    sget-object v2, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MG_DL:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    .line 112
    invoke-virtual {v2}, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->ordinal()I

    move-result v2

    invoke-interface {p2, p3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    aget-object p2, v0, p2

    .line 113
    sget-object p3, Lcom/senseonics/util/Utils$GLUCOSE_UNIT;->GLUCOSE_UNIT_MG_DL:Lcom/senseonics/util/Utils$GLUCOSE_UNIT;

    if-ne p2, p3, :cond_3

    .line 114
    iget-object p2, p0, Lcom/senseonics/fragments/GlucoseUnitFragment;->radioMgDLType:Landroid/widget/CheckBox;

    invoke-virtual {p2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 116
    :cond_3
    iget-object p2, p0, Lcom/senseonics/fragments/GlucoseUnitFragment;->radioMmolType:Landroid/widget/CheckBox;

    invoke-virtual {p2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_4
    :goto_1
    return-object p1
.end method
