.class Ldaggero/internal/ArrayQueue$QueueIterator;
.super Ljava/lang/Object;
.source "ArrayQueue.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldaggero/internal/ArrayQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueueIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private cursor:I

.field private fence:I

.field private lastRet:I

.field final synthetic this$0:Ldaggero/internal/ArrayQueue;


# direct methods
.method private constructor <init>(Ldaggero/internal/ArrayQueue;)V
    .locals 0

    .line 353
    iput-object p1, p0, Ldaggero/internal/ArrayQueue$QueueIterator;->this$0:Ldaggero/internal/ArrayQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    iget-object p1, p0, Ldaggero/internal/ArrayQueue$QueueIterator;->this$0:Ldaggero/internal/ArrayQueue;

    invoke-static {p1}, Ldaggero/internal/ArrayQueue;->access$100(Ldaggero/internal/ArrayQueue;)I

    move-result p1

    iput p1, p0, Ldaggero/internal/ArrayQueue$QueueIterator;->cursor:I

    .line 363
    iget-object p1, p0, Ldaggero/internal/ArrayQueue$QueueIterator;->this$0:Ldaggero/internal/ArrayQueue;

    invoke-static {p1}, Ldaggero/internal/ArrayQueue;->access$200(Ldaggero/internal/ArrayQueue;)I

    move-result p1

    iput p1, p0, Ldaggero/internal/ArrayQueue$QueueIterator;->fence:I

    const/4 p1, -0x1

    .line 369
    iput p1, p0, Ldaggero/internal/ArrayQueue$QueueIterator;->lastRet:I

    return-void
.end method

.method synthetic constructor <init>(Ldaggero/internal/ArrayQueue;Ldaggero/internal/ArrayQueue$1;)V
    .locals 0

    .line 353
    invoke-direct {p0, p1}, Ldaggero/internal/ArrayQueue$QueueIterator;-><init>(Ldaggero/internal/ArrayQueue;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 373
    iget v0, p0, Ldaggero/internal/ArrayQueue$QueueIterator;->cursor:I

    iget v1, p0, Ldaggero/internal/ArrayQueue$QueueIterator;->fence:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 378
    iget v0, p0, Ldaggero/internal/ArrayQueue$QueueIterator;->cursor:I

    iget v1, p0, Ldaggero/internal/ArrayQueue$QueueIterator;->fence:I

    if-eq v0, v1, :cond_1

    .line 380
    iget-object v0, p0, Ldaggero/internal/ArrayQueue$QueueIterator;->this$0:Ldaggero/internal/ArrayQueue;

    invoke-static {v0}, Ldaggero/internal/ArrayQueue;->access$300(Ldaggero/internal/ArrayQueue;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Ldaggero/internal/ArrayQueue$QueueIterator;->cursor:I

    aget-object v0, v0, v1

    .line 383
    iget-object v1, p0, Ldaggero/internal/ArrayQueue$QueueIterator;->this$0:Ldaggero/internal/ArrayQueue;

    invoke-static {v1}, Ldaggero/internal/ArrayQueue;->access$200(Ldaggero/internal/ArrayQueue;)I

    move-result v1

    iget v2, p0, Ldaggero/internal/ArrayQueue$QueueIterator;->fence:I

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    .line 385
    iget v1, p0, Ldaggero/internal/ArrayQueue$QueueIterator;->cursor:I

    iput v1, p0, Ldaggero/internal/ArrayQueue$QueueIterator;->lastRet:I

    add-int/lit8 v1, v1, 0x1

    .line 386
    iget-object v2, p0, Ldaggero/internal/ArrayQueue$QueueIterator;->this$0:Ldaggero/internal/ArrayQueue;

    invoke-static {v2}, Ldaggero/internal/ArrayQueue;->access$300(Ldaggero/internal/ArrayQueue;)[Ljava/lang/Object;

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Ldaggero/internal/ArrayQueue$QueueIterator;->cursor:I

    return-object v0

    .line 384
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 379
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 392
    iget v0, p0, Ldaggero/internal/ArrayQueue$QueueIterator;->lastRet:I

    if-ltz v0, :cond_1

    .line 394
    iget-object v1, p0, Ldaggero/internal/ArrayQueue$QueueIterator;->this$0:Ldaggero/internal/ArrayQueue;

    invoke-static {v1, v0}, Ldaggero/internal/ArrayQueue;->access$400(Ldaggero/internal/ArrayQueue;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    iget v0, p0, Ldaggero/internal/ArrayQueue$QueueIterator;->cursor:I

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Ldaggero/internal/ArrayQueue$QueueIterator;->this$0:Ldaggero/internal/ArrayQueue;

    invoke-static {v1}, Ldaggero/internal/ArrayQueue;->access$300(Ldaggero/internal/ArrayQueue;)[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Ldaggero/internal/ArrayQueue$QueueIterator;->cursor:I

    .line 396
    iget-object v0, p0, Ldaggero/internal/ArrayQueue$QueueIterator;->this$0:Ldaggero/internal/ArrayQueue;

    invoke-static {v0}, Ldaggero/internal/ArrayQueue;->access$200(Ldaggero/internal/ArrayQueue;)I

    move-result v0

    iput v0, p0, Ldaggero/internal/ArrayQueue$QueueIterator;->fence:I

    :cond_0
    const/4 v0, -0x1

    .line 398
    iput v0, p0, Ldaggero/internal/ArrayQueue$QueueIterator;->lastRet:I

    return-void

    .line 393
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
