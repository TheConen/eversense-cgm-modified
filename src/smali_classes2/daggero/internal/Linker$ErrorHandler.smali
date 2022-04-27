.class public interface abstract Ldaggero/internal/Linker$ErrorHandler;
.super Ljava/lang/Object;
.source "Linker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldaggero/internal/Linker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ErrorHandler"
.end annotation


# static fields
.field public static final NULL:Ldaggero/internal/Linker$ErrorHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 432
    new-instance v0, Ldaggero/internal/Linker$ErrorHandler$1;

    invoke-direct {v0}, Ldaggero/internal/Linker$ErrorHandler$1;-><init>()V

    sput-object v0, Ldaggero/internal/Linker$ErrorHandler;->NULL:Ldaggero/internal/Linker$ErrorHandler;

    return-void
.end method


# virtual methods
.method public abstract handleErrors(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
