.class public Lcom/senseonics/bluetoothle/LegacyResponseHandlingEventBroadcaster;
.super Ljava/lang/Object;
.source "LegacyResponseHandlingEventBroadcaster.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private eventBus:Lde/greenrobot/event/EventBus;

.field private queue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lde/greenrobot/event/EventBus;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 22
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/senseonics/bluetoothle/LegacyResponseHandlingEventBroadcaster;-><init>(Lde/greenrobot/event/EventBus;Ljava/util/concurrent/LinkedBlockingQueue;)V

    return-void
.end method

.method protected constructor <init>(Lde/greenrobot/event/EventBus;Ljava/util/concurrent/LinkedBlockingQueue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/greenrobot/event/EventBus;",
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/senseonics/bluetoothle/LegacyResponseHandlingEventBroadcaster;->eventBus:Lde/greenrobot/event/EventBus;

    .line 27
    iput-object p2, p0, Lcom/senseonics/bluetoothle/LegacyResponseHandlingEventBroadcaster;->queue:Ljava/util/concurrent/BlockingQueue;

    .line 29
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v0, Lcom/senseonics/bluetoothle/LegacyResponseHandlingEventBroadcaster;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-Thread"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public broadcast(Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;)V
    .locals 4

    .line 34
    const-class v0, Lcom/senseonics/bluetoothle/LegacyResponseHandlingEventBroadcaster;

    :try_start_0
    iget-object v1, p0, Lcom/senseonics/bluetoothle/LegacyResponseHandlingEventBroadcaster;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 35
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "put "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " depth now: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/senseonics/bluetoothle/LegacyResponseHandlingEventBroadcaster;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 37
    :catch_0
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "skipping event because our queue is full (should never happen)"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public run()V
    .locals 5

    .line 45
    const-class v0, Lcom/senseonics/bluetoothle/LegacyResponseHandlingEventBroadcaster;

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/senseonics/bluetoothle/LegacyResponseHandlingEventBroadcaster;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/senseonics/bluetoothle/event/LegacyResponseHandlingEvent;

    .line 46
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "take "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/senseonics/bluetoothle/LegacyResponseHandlingEventBroadcaster;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v2, p0, Lcom/senseonics/bluetoothle/LegacyResponseHandlingEventBroadcaster;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v2, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 49
    :catch_0
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "leaving run method due to interruption"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
