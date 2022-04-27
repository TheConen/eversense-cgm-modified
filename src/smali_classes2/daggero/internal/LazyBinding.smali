.class final Ldaggero/internal/LazyBinding;
.super Ldaggero/internal/Binding;
.source "LazyBinding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ldaggero/internal/Binding<",
        "Ldaggero/Lazy<",
        "TT;>;>;"
    }
.end annotation


# static fields
.field static final NOT_PRESENT:Ljava/lang/Object;


# instance fields
.field delegate:Ldaggero/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldaggero/internal/Binding<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final lazyKey:Ljava/lang/String;

.field private final loader:Ljava/lang/ClassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ldaggero/internal/LazyBinding;->NOT_PRESENT:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 33
    invoke-direct {p0, p1, v0, v1, p2}, Ldaggero/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 34
    iput-object p3, p0, Ldaggero/internal/LazyBinding;->loader:Ljava/lang/ClassLoader;

    .line 35
    iput-object p4, p0, Ldaggero/internal/LazyBinding;->lazyKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public attach(Ldaggero/internal/Linker;)V
    .locals 3

    .line 41
    iget-object v0, p0, Ldaggero/internal/LazyBinding;->lazyKey:Ljava/lang/String;

    iget-object v1, p0, Ldaggero/internal/LazyBinding;->requiredBy:Ljava/lang/Object;

    iget-object v2, p0, Ldaggero/internal/LazyBinding;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v0, v1, v2}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Ldaggero/internal/LazyBinding;->delegate:Ldaggero/internal/Binding;

    return-void
.end method

.method public get()Ldaggero/Lazy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldaggero/Lazy<",
            "TT;>;"
        }
    .end annotation

    .line 50
    new-instance v0, Ldaggero/internal/LazyBinding$1;

    invoke-direct {v0, p0}, Ldaggero/internal/LazyBinding$1;-><init>(Ldaggero/internal/LazyBinding;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 24
    invoke-virtual {p0}, Ldaggero/internal/LazyBinding;->get()Ldaggero/Lazy;

    move-result-object v0

    return-object v0
.end method

.method public injectMembers(Ldaggero/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldaggero/Lazy<",
            "TT;>;)V"
        }
    .end annotation

    .line 45
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p1, Ldaggero/Lazy;

    invoke-virtual {p0, p1}, Ldaggero/internal/LazyBinding;->injectMembers(Ldaggero/Lazy;)V

    return-void
.end method
