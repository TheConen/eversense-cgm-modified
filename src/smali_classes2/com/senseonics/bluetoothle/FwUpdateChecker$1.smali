.class Lcom/senseonics/bluetoothle/FwUpdateChecker$1;
.super Ljava/lang/Object;
.source "FwUpdateChecker.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/bluetoothle/FwUpdateChecker;->getSuccessAction()Lrx/functions/Action1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/bluetoothle/FwUpdateChecker;


# direct methods
.method constructor <init>(Lcom/senseonics/bluetoothle/FwUpdateChecker;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/senseonics/bluetoothle/FwUpdateChecker$1;->this$0:Lcom/senseonics/bluetoothle/FwUpdateChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Integer;)V
    .locals 4

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " (bool:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OTW_DEBUG"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v0, p0, Lcom/senseonics/bluetoothle/FwUpdateChecker$1;->this$0:Lcom/senseonics/bluetoothle/FwUpdateChecker;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-static {v0, v2}, Lcom/senseonics/bluetoothle/FwUpdateChecker;->access$000(Lcom/senseonics/bluetoothle/FwUpdateChecker;Z)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 55
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/senseonics/bluetoothle/FwUpdateChecker$1;->call(Ljava/lang/Integer;)V

    return-void
.end method
