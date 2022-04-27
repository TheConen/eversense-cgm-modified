.class Ldaggero/internal/LazyBinding$1;
.super Ljava/lang/Object;
.source "LazyBinding.java"

# interfaces
.implements Ldaggero/Lazy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldaggero/internal/LazyBinding;->get()Ldaggero/Lazy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldaggero/Lazy<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private volatile cacheValue:Ljava/lang/Object;

.field final synthetic this$0:Ldaggero/internal/LazyBinding;


# direct methods
.method constructor <init>(Ldaggero/internal/LazyBinding;)V
    .locals 0

    .line 50
    iput-object p1, p0, Ldaggero/internal/LazyBinding$1;->this$0:Ldaggero/internal/LazyBinding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    sget-object p1, Ldaggero/internal/LazyBinding;->NOT_PRESENT:Ljava/lang/Object;

    iput-object p1, p0, Ldaggero/internal/LazyBinding$1;->cacheValue:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Ldaggero/internal/LazyBinding$1;->cacheValue:Ljava/lang/Object;

    sget-object v1, Ldaggero/internal/LazyBinding;->NOT_PRESENT:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 57
    monitor-enter p0

    .line 58
    :try_start_0
    iget-object v0, p0, Ldaggero/internal/LazyBinding$1;->cacheValue:Ljava/lang/Object;

    sget-object v1, Ldaggero/internal/LazyBinding;->NOT_PRESENT:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 59
    iget-object v0, p0, Ldaggero/internal/LazyBinding$1;->this$0:Ldaggero/internal/LazyBinding;

    iget-object v0, v0, Ldaggero/internal/LazyBinding;->delegate:Ldaggero/internal/Binding;

    invoke-virtual {v0}, Ldaggero/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ldaggero/internal/LazyBinding$1;->cacheValue:Ljava/lang/Object;

    .line 61
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 63
    :cond_1
    :goto_0
    iget-object v0, p0, Ldaggero/internal/LazyBinding$1;->cacheValue:Ljava/lang/Object;

    return-object v0
.end method
