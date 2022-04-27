.class Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$4;
.super Ljava/lang/Object;
.source "SoundSettingsSimplifiedPresenter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->getLowGlucoseOverrideSwitchCheckedChangeListener()Landroid/widget/CompoundButton$OnCheckedChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;


# direct methods
.method constructor <init>(Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$4;->this$0:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 8

    .line 239
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$4;->this$0:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;

    invoke-static {p1}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->access$300(Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;)Lcom/senseonics/util/NotificationDndManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/senseonics/util/NotificationDndManager;->isOverrideDndAccessGranted()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 240
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$4;->this$0:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;

    invoke-static {p1}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->access$300(Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;)Lcom/senseonics/util/NotificationDndManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/senseonics/util/NotificationDndManager;->setIsOverridePhoneSettingLowGlucoseAlarmEnabled(Z)V

    goto :goto_0

    .line 242
    :cond_0
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$4;->this$0:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;

    invoke-static {p1}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->access$400(Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;)V

    .line 244
    new-instance v4, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$4$1;

    invoke-direct {v4, p0}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$4$1;-><init>(Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$4;)V

    .line 250
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$4;->this$0:Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;

    iget-object p1, p1, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter;->view:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$SoundSettingsSimplifiedView;

    const v1, 0x7f1102b9

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x1

    const v6, 0x7f11007f

    const v7, 0x7f1102a6

    invoke-interface/range {v0 .. v7}, Lcom/senseonics/gen12androidapp/SoundSettingsSimplifiedPresenter$SoundSettingsSimplifiedView;->showDialogWithCustomButtons(IIILcom/senseonics/view/SimpleDialogFragment$OnDismissListener;ZII)V

    :goto_0
    return-void
.end method
