.class public final enum Ldaggero/Provides$Type;
.super Ljava/lang/Enum;
.source "Provides.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldaggero/Provides;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ldaggero/Provides$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ldaggero/Provides$Type;

.field public static final enum SET:Ldaggero/Provides$Type;

.field public static final enum SET_VALUES:Ldaggero/Provides$Type;

.field public static final enum UNIQUE:Ldaggero/Provides$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 41
    new-instance v0, Ldaggero/Provides$Type;

    const/4 v1, 0x0

    const-string v2, "UNIQUE"

    invoke-direct {v0, v2, v1}, Ldaggero/Provides$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldaggero/Provides$Type;->UNIQUE:Ldaggero/Provides$Type;

    .line 49
    new-instance v0, Ldaggero/Provides$Type;

    const/4 v2, 0x1

    const-string v3, "SET"

    invoke-direct {v0, v3, v2}, Ldaggero/Provides$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldaggero/Provides$Type;->SET:Ldaggero/Provides$Type;

    .line 56
    new-instance v0, Ldaggero/Provides$Type;

    const/4 v3, 0x2

    const-string v4, "SET_VALUES"

    invoke-direct {v0, v4, v3}, Ldaggero/Provides$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldaggero/Provides$Type;->SET_VALUES:Ldaggero/Provides$Type;

    const/4 v4, 0x3

    new-array v4, v4, [Ldaggero/Provides$Type;

    .line 36
    sget-object v5, Ldaggero/Provides$Type;->UNIQUE:Ldaggero/Provides$Type;

    aput-object v5, v4, v1

    sget-object v1, Ldaggero/Provides$Type;->SET:Ldaggero/Provides$Type;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Ldaggero/Provides$Type;->$VALUES:[Ldaggero/Provides$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ldaggero/Provides$Type;
    .locals 1

    .line 36
    const-class v0, Ldaggero/Provides$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ldaggero/Provides$Type;

    return-object p0
.end method

.method public static values()[Ldaggero/Provides$Type;
    .locals 1

    .line 36
    sget-object v0, Ldaggero/Provides$Type;->$VALUES:[Ldaggero/Provides$Type;

    invoke-virtual {v0}, [Ldaggero/Provides$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldaggero/Provides$Type;

    return-object v0
.end method
