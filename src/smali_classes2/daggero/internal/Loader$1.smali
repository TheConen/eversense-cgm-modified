.class Ldaggero/internal/Loader$1;
.super Ldaggero/internal/Memoizer;
.source "Loader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldaggero/internal/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldaggero/internal/Memoizer<",
        "Ljava/lang/ClassLoader;",
        "Ldaggero/internal/Memoizer<",
        "Ljava/lang/String;",
        "Ljava/lang/Class<",
        "*>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ldaggero/internal/Loader;


# direct methods
.method constructor <init>(Ldaggero/internal/Loader;)V
    .locals 0

    .line 29
    iput-object p1, p0, Ldaggero/internal/Loader$1;->this$0:Ldaggero/internal/Loader;

    invoke-direct {p0}, Ldaggero/internal/Memoizer;-><init>()V

    return-void
.end method


# virtual methods
.method protected create(Ljava/lang/ClassLoader;)Ldaggero/internal/Memoizer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ldaggero/internal/Memoizer<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 31
    new-instance v0, Ldaggero/internal/Loader$1$1;

    invoke-direct {v0, p0, p1}, Ldaggero/internal/Loader$1$1;-><init>(Ldaggero/internal/Loader$1;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method protected bridge synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 29
    check-cast p1, Ljava/lang/ClassLoader;

    invoke-virtual {p0, p1}, Ldaggero/internal/Loader$1;->create(Ljava/lang/ClassLoader;)Ldaggero/internal/Memoizer;

    move-result-object p1

    return-object p1
.end method
