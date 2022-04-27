.class Lcom/senseonics/gen12androidapp/SensorListActivity$1;
.super Ljava/lang/Object;
.source "SensorListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/gen12androidapp/SensorListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/gen12androidapp/SensorListActivity;


# direct methods
.method constructor <init>(Lcom/senseonics/gen12androidapp/SensorListActivity;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$1;->this$0:Lcom/senseonics/gen12androidapp/SensorListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 160
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$1;->this$0:Lcom/senseonics/gen12androidapp/SensorListActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/senseonics/gen12androidapp/SensorListActivity;->access$002(Lcom/senseonics/gen12androidapp/SensorListActivity;Z)Z

    .line 161
    iget-object p1, p0, Lcom/senseonics/gen12androidapp/SensorListActivity$1;->this$0:Lcom/senseonics/gen12androidapp/SensorListActivity;

    invoke-static {p1}, Lcom/senseonics/gen12androidapp/SensorListActivity;->access$100(Lcom/senseonics/gen12androidapp/SensorListActivity;)V

    return-void
.end method
