.class Lcom/google/common/util/concurrent/ClosingFuture$8;
.super Ljava/lang/Object;
.source "ClosingFuture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/ClosingFuture;->finishToFuture()Lcom/google/common/util/concurrent/FluentFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/util/concurrent/ClosingFuture;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/ClosingFuture;)V
    .locals 0

    .line 947
    iput-object p1, p0, Lcom/google/common/util/concurrent/ClosingFuture$8;->this$0:Lcom/google/common/util/concurrent/ClosingFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 950
    iget-object v0, p0, Lcom/google/common/util/concurrent/ClosingFuture$8;->this$0:Lcom/google/common/util/concurrent/ClosingFuture;

    sget-object v1, Lcom/google/common/util/concurrent/ClosingFuture$State;->WILL_CLOSE:Lcom/google/common/util/concurrent/ClosingFuture$State;

    sget-object v2, Lcom/google/common/util/concurrent/ClosingFuture$State;->CLOSING:Lcom/google/common/util/concurrent/ClosingFuture$State;

    invoke-static {v0, v1, v2}, Lcom/google/common/util/concurrent/ClosingFuture;->access$1000(Lcom/google/common/util/concurrent/ClosingFuture;Lcom/google/common/util/concurrent/ClosingFuture$State;Lcom/google/common/util/concurrent/ClosingFuture$State;)V

    .line 951
    iget-object v0, p0, Lcom/google/common/util/concurrent/ClosingFuture$8;->this$0:Lcom/google/common/util/concurrent/ClosingFuture;

    invoke-static {v0}, Lcom/google/common/util/concurrent/ClosingFuture;->access$100(Lcom/google/common/util/concurrent/ClosingFuture;)V

    .line 952
    iget-object v0, p0, Lcom/google/common/util/concurrent/ClosingFuture$8;->this$0:Lcom/google/common/util/concurrent/ClosingFuture;

    sget-object v1, Lcom/google/common/util/concurrent/ClosingFuture$State;->CLOSING:Lcom/google/common/util/concurrent/ClosingFuture$State;

    sget-object v2, Lcom/google/common/util/concurrent/ClosingFuture$State;->CLOSED:Lcom/google/common/util/concurrent/ClosingFuture$State;

    invoke-static {v0, v1, v2}, Lcom/google/common/util/concurrent/ClosingFuture;->access$1000(Lcom/google/common/util/concurrent/ClosingFuture;Lcom/google/common/util/concurrent/ClosingFuture$State;Lcom/google/common/util/concurrent/ClosingFuture$State;)V

    return-void
.end method