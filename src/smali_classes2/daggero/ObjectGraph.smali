.class public abstract Ldaggero/ObjectGraph;
.super Ljava/lang/Object;
.source "ObjectGraph.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldaggero/ObjectGraph$OverridesBindings;,
        Ldaggero/ObjectGraph$StandardBindings;,
        Ldaggero/ObjectGraph$DaggerObjectGraph;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs create([Ljava/lang/Object;)Ldaggero/ObjectGraph;
    .locals 2

    .line 130
    new-instance v0, Ldaggero/internal/FailoverLoader;

    invoke-direct {v0}, Ldaggero/internal/FailoverLoader;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1, v0, p0}, Ldaggero/ObjectGraph$DaggerObjectGraph;->makeGraph(Ldaggero/ObjectGraph$DaggerObjectGraph;Ldaggero/internal/Loader;[Ljava/lang/Object;)Ldaggero/ObjectGraph;

    move-result-object p0

    return-object p0
.end method

.method static varargs createWith(Ldaggero/internal/Loader;[Ljava/lang/Object;)Ldaggero/ObjectGraph;
    .locals 1

    const/4 v0, 0x0

    .line 135
    invoke-static {v0, p0, p1}, Ldaggero/ObjectGraph$DaggerObjectGraph;->makeGraph(Ldaggero/ObjectGraph$DaggerObjectGraph;Ldaggero/internal/Loader;[Ljava/lang/Object;)Ldaggero/ObjectGraph;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract get(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract inject(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation
.end method

.method public abstract injectStatics()V
.end method

.method public varargs abstract plus([Ljava/lang/Object;)Ldaggero/ObjectGraph;
.end method

.method public abstract validate()V
.end method
