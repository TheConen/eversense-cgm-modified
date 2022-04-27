.class final Ldaggero/internal/BuiltInBinding;
.super Ldaggero/internal/Binding;
.source "BuiltInBinding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ldaggero/internal/Binding<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final classLoader:Ljava/lang/ClassLoader;

.field private delegate:Ldaggero/internal/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldaggero/internal/Binding<",
            "*>;"
        }
    .end annotation
.end field

.field private final delegateKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 29
    invoke-direct {p0, p1, v0, v1, p2}, Ldaggero/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 30
    iput-object p3, p0, Ldaggero/internal/BuiltInBinding;->classLoader:Ljava/lang/ClassLoader;

    .line 31
    iput-object p4, p0, Ldaggero/internal/BuiltInBinding;->delegateKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public attach(Ldaggero/internal/Linker;)V
    .locals 3

    .line 35
    iget-object v0, p0, Ldaggero/internal/BuiltInBinding;->delegateKey:Ljava/lang/String;

    iget-object v1, p0, Ldaggero/internal/BuiltInBinding;->requiredBy:Ljava/lang/Object;

    iget-object v2, p0, Ldaggero/internal/BuiltInBinding;->classLoader:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v0, v1, v2}, Ldaggero/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldaggero/internal/Binding;

    move-result-object p1

    iput-object p1, p0, Ldaggero/internal/BuiltInBinding;->delegate:Ldaggero/internal/Binding;

    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Ldaggero/internal/BuiltInBinding;->delegate:Ldaggero/internal/Binding;

    return-object v0
.end method

.method public getDelegate()Ldaggero/internal/Binding;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldaggero/internal/Binding<",
            "*>;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Ldaggero/internal/BuiltInBinding;->delegate:Ldaggero/internal/Binding;

    return-object v0
.end method

.method public injectMembers(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 39
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
