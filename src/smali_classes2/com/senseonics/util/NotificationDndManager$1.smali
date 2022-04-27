.class Lcom/senseonics/util/NotificationDndManager$1;
.super Ljava/lang/Object;
.source "NotificationDndManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/util/NotificationDndManager;->playCriticalAlarm(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/util/NotificationDndManager;

.field final synthetic val$soundUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/senseonics/util/NotificationDndManager;Landroid/net/Uri;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/senseonics/util/NotificationDndManager$1;->this$0:Lcom/senseonics/util/NotificationDndManager;

    iput-object p2, p0, Lcom/senseonics/util/NotificationDndManager$1;->val$soundUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 82
    iget-object v0, p0, Lcom/senseonics/util/NotificationDndManager$1;->this$0:Lcom/senseonics/util/NotificationDndManager;

    invoke-static {v0}, Lcom/senseonics/util/NotificationDndManager;->access$100(Lcom/senseonics/util/NotificationDndManager;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/util/NotificationDndManager$1;->this$0:Lcom/senseonics/util/NotificationDndManager;

    invoke-static {v1}, Lcom/senseonics/util/NotificationDndManager;->access$000(Lcom/senseonics/util/NotificationDndManager;)I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 83
    iget-object v0, p0, Lcom/senseonics/util/NotificationDndManager$1;->this$0:Lcom/senseonics/util/NotificationDndManager;

    invoke-static {v0}, Lcom/senseonics/util/NotificationDndManager;->access$200(Lcom/senseonics/util/NotificationDndManager;)Lcom/senseonics/util/NotificationMediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/senseonics/util/NotificationDndManager$1;->val$soundUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/senseonics/util/NotificationMediaPlayer;->play(Landroid/net/Uri;)V

    return-void
.end method
