.class final Ldaggero/internal/Binding$1;
.super Ldaggero/internal/Binding;
.source "Binding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldaggero/internal/Binding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldaggero/internal/Binding<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Ldaggero/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2

    .line 29
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Unresolved binding should never be called to inject."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public injectMembers(Ljava/lang/Object;)V
    .locals 1

    .line 32
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Unresolved binding should never be called to inject."

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method
