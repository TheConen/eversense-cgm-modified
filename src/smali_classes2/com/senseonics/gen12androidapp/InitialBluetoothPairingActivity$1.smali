.class Lcom/senseonics/gen12androidapp/InitialBluetoothPairingActivity$1;
.super Ljava/lang/Object;
.source "InitialBluetoothPairingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/gen12androidapp/InitialBluetoothPairingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/gen12androidapp/InitialBluetoothPairingActivity;


# direct methods
.method constructor <init>(Lcom/senseonics/gen12androidapp/InitialBluetoothPairingActivity;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/InitialBluetoothPairingActivity$1;->this$0:Lcom/senseonics/gen12androidapp/InitialBluetoothPairingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 36
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/InitialBluetoothPairingActivity$1;->this$0:Lcom/senseonics/gen12androidapp/InitialBluetoothPairingActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/senseonics/gen12androidapp/InitialBluetoothPairingActivity$1;->this$0:Lcom/senseonics/gen12androidapp/InitialBluetoothPairingActivity;

    .line 39
    invoke-static {}, Lcom/senseonics/util/AccountConfigurations;->hideDailyCal()Z

    move-result v2

    if-eqz v2, :cond_0

    const-class v2, Lcom/senseonics/gen12androidapp/GlucoseUnitActivity;

    goto :goto_0

    :cond_0
    const-class v2, Lcom/senseonics/gen12androidapp/InitialDailyCalibrationActivity;

    :goto_0
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    invoke-virtual {p1, v0}, Lcom/senseonics/gen12androidapp/InitialBluetoothPairingActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
