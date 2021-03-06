.class Lde/greenrobot/event/AsyncPoster;
.super Ljava/lang/Object;
.source "AsyncPoster.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final eventBus:Lde/greenrobot/event/EventBus;

.field private final queue:Lde/greenrobot/event/PendingPostQueue;


# direct methods
.method constructor <init>(Lde/greenrobot/event/EventBus;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lde/greenrobot/event/AsyncPoster;->eventBus:Lde/greenrobot/event/EventBus;

    .line 31
    new-instance p1, Lde/greenrobot/event/PendingPostQueue;

    invoke-direct {p1}, Lde/greenrobot/event/PendingPostQueue;-><init>()V

    iput-object p1, p0, Lde/greenrobot/event/AsyncPoster;->queue:Lde/greenrobot/event/PendingPostQueue;

    return-void
.end method


# virtual methods
.method public enqueue(Lde/greenrobot/event/Subscription;Ljava/lang/Object;)V
    .locals 0

    .line 35
    invoke-static {p1, p2}, Lde/greenrobot/event/PendingPost;->obtainPendingPost(Lde/greenrobot/event/Subscription;Ljava/lang/Object;)Lde/greenrobot/event/PendingPost;

    move-result-object p1

    .line 36
    iget-object p2, p0, Lde/greenrobot/event/AsyncPoster;->queue:Lde/greenrobot/event/PendingPostQueue;

    invoke-virtual {p2, p1}, Lde/greenrobot/event/PendingPostQueue;->enqueue(Lde/greenrobot/event/PendingPost;)V

    .line 37
    iget-object p1, p0, Lde/greenrobot/event/AsyncPoster;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {p1}, Lde/greenrobot/event/EventBus;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public run()V
    .locals 2

    .line 42
    iget-object v0, p0, Lde/greenrobot/event/AsyncPoster;->queue:Lde/greenrobot/event/PendingPostQueue;

    invoke-virtual {v0}, Lde/greenrobot/event/PendingPostQueue;->poll()Lde/greenrobot/event/PendingPost;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v1, p0, Lde/greenrobot/event/AsyncPoster;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v1, v0}, Lde/greenrobot/event/EventBus;->invokeSubscriber(Lde/greenrobot/event/PendingPost;)V

    return-void

    .line 44
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No pending post available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
